import streamlit as st
import sqlite3
from datetime import datetime, timedelta
import re
import base64

#setting background 
def set_background():
    bin_file = "./data/outreach.png"
    with open(bin_file, 'rb') as f:
        data = f.read()
    bin_str = base64.b64encode(data).decode()
    page_bg_img = '''
        <style>
        .stApp {
            background-image: url("data:image/png;base64,%s");
            background-size: cover;
        }
        </style>
    ''' % bin_str
    st.markdown(page_bg_img, unsafe_allow_html=True)

# Establish a connection to the SQLite database
conn = sqlite3.connect("./sql/wildlife.db")
cursor = conn.cursor()

def get_program_details(organization_type):
    cursor.execute("""
        SELECT Program_Id, Organisation_Name, Program_Period
        FROM OUTREACH_PROGRAM
        WHERE Organisation_Type = ?
    """, (organization_type,))
    return cursor.fetchall()

def get_program_duration(program_id):
    cursor.execute("SELECT Program_Period FROM OUTREACH_PROGRAM WHERE Program_Id = ?", (program_id,))
    result = cursor.fetchone()
    return result[0] if result else None

def generate_dates(program_duration):
    start_date = datetime.now() + timedelta(days=1)
    end_date = start_date + timedelta(days=program_duration)
    return start_date, end_date

def outreach_programs_page():
    st.title("Outreach Programs")
    set_background()
    
    # Get organization types from the database
    cursor.execute("SELECT DISTINCT Organisation_Type FROM OUTREACH_PROGRAM")
    organization_types = [row[0] for row in cursor.fetchall()]
    selected_organization_type = st.selectbox("Select Organization Type", organization_types)

    # Get program details based on the selected organization type
    program_details = get_program_details(selected_organization_type)
    program_names = [f"{row[1]} (ID: {row[0]})" for row in program_details]
    selected_program_name = st.selectbox("Select Program", program_names)

    # Extract program_id from the selected program name
    selected_program_id = int(selected_program_name.split("(ID: ")[1][:-1])

    # Display program details
    program_duration = get_program_duration(selected_program_id)
    start_date, end_date = generate_dates(program_duration)

    st.subheader("Program Details")
    st.write(f"Selected Program ID: {selected_program_id}")
    st.write(f"Selected Program Duration: {program_duration} days")
    st.write(f"Start Date: {start_date.strftime('%Y-%m-%d')}")
    st.write(f"End Date: {end_date.strftime('%Y-%m-%d')}")

    # Sign Up Form
    st.subheader("Sign Up")
    organization_name = st.text_input("Organization Name")
    first_name = st.text_input("First Name")
    last_name = st.text_input("Last Name")

    contact_information = st.text_input("Mobile Number (e.g., 123-456-7890)", value="", max_chars=12)

    mobile_number_pattern = re.compile(r'^\d{3}-\d{3}-\d{4}$')
    if st.text_input("Confirm Number", value="").strip() and not mobile_number_pattern.match(contact_information):
        st.warning("Please enter a valid mobile number in the format XXX-XXX-XXXX.")

    previously_affiliated = st.radio("Have you previously affiliated with us?", ["Yes", "No"])

    if st.button("Submit") and mobile_number_pattern.match(contact_information):
        try:
            save_signup_details(selected_program_id, organization_name, first_name, last_name, contact_information, previously_affiliated)
            print("Submit button clicked")  
            st.success("Thank you for registering with us! We will get back to you soon.")
        except Exception as e:
            st.error(f"An error occurred: {str(e)}")

def save_signup_details(program_id, org_name, first, last, contact, affiliated):
    # Get the next available Volunteer_ID
    cursor.execute("SELECT MAX(Volunteer_ID) FROM VOLUNTEER")
    max_volunteer_id = cursor.fetchone()[0]
    next_volunteer_id = max_volunteer_id + 1 if max_volunteer_id is not None else 1

    # Insert volunteer data into the VOLUNTEER table in the database
    cursor.execute("""
        INSERT INTO VOLUNTEER (Volunteer_ID, Program_Id, Name, Start_Date, End_Date) 
        VALUES (?, ?, ?, ?, ?)
    """, (next_volunteer_id, program_id, f"{first} {last}", datetime.now().strftime('%Y-%m-%d'), datetime.now().strftime('%Y-%m-%d')))
    
    conn.commit()  # Commit the changes to the database


# Run the app
if __name__ == "__main__":
    outreach_programs_page()

# Close the database connection when done
conn.close()
