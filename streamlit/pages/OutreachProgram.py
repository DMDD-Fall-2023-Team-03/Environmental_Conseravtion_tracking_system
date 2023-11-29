import streamlit as st
import random
import os
import json
from datetime import datetime, timedelta
import re

# Initialize st.session_state
if "selected_program" not in st.session_state:
    st.session_state.selected_program = None

def get_random_program_names():
    program_names = ["Environmental Awareness Workshop", "Wildlife Conservation Seminar", "Nature Photography Tour", "Tree Plantation Drive", "Bird Watching Expedition"]
    return random.sample(program_names, k=random.randint(1, len(program_names)))

def get_random_dates():
    start_date = datetime.now() + timedelta(days=random.randint(1, 30))
    end_date = start_date + timedelta(days=random.randint(1, 10))
    return start_date, end_date

def outreach_programs_page():
    st.title("Outreach Programs")

    selected_program = st.session_state.selected_program
    if selected_program is None:
        selected_program = get_random_program_names()

    program_names = get_random_program_names()
    selected_program = st.selectbox("Select Program", program_names, key="select_program")

    if st.session_state.selected_program != selected_program:
        st.session_state.selected_program = selected_program

    start_date, end_date = get_random_dates()
    st.subheader("Program Dates")
    st.write(f"Start Date: {start_date.strftime('%Y-%m-%d')}")
    st.write(f"End Date: {end_date.strftime('%Y-%m-%d')}")

    st.subheader("Sign Up")
    organization_name = st.text_input("Organization Name")
    first_name = st.text_input("First Name")
    last_name = st.text_input("Last Name")

    contact_information = st.text_input("Mobile Number (e.g., 123-456-7890)", value="", max_chars=12)

    mobile_number_pattern = re.compile(r'^\d{3}-\d{3}-\d{4}$')
    if st.text_input("Placeholder", value="").strip() and not mobile_number_pattern.match(contact_information):
        st.warning("Please enter a valid mobile number in the format XXX-XXX-XXXX.")

    previously_affiliated = st.radio("Have you previously affiliated with us?", ["Yes", "No"])

    if st.button("Submit") and mobile_number_pattern.match(contact_information):
        save_signup_details(st.session_state.selected_program, organization_name, first_name, last_name, contact_information, previously_affiliated)
        st.success("Thank you for registering with us! We will get back to you soon.")

def save_signup_details(program, org_name, first, last, contact, affiliated):
    data_folder = "./data"
    os.makedirs(data_folder, exist_ok=True)

    signup_details = {
        "Program": program,
        "Organization Name": org_name,
        "First Name": first,
        "Last Name": last,
        "Contact Information": contact,
        "Previously Affiliated": affiliated,
        "Timestamp": datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    }

    filename = f"{data_folder}/signup_{datetime.now().strftime('%Y%m%d%H%M%S')}.json"
    with open(filename, 'w') as file:
        json.dump(signup_details, file)

# Run the app
if __name__ == "__main__":
    outreach_programs_page()
