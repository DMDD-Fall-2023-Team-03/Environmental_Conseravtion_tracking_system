import streamlit as st
import pandas as pd
import sqlite3
import os
import base64

# Setting background 
def set_background():
    bin_file = "./data/employee.png"
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

# Function to create a SQLite connection
def create_connection():
    conn = sqlite3.connect("./sql/wildlife.db")  # Replace with the actual path to your SQLite database
    return conn

# Function to authenticate users
def authenticate(username, password, role):
    # Hardcoded admin credentials
    admin_credentials = {"admin": "admin"}

    # Check if the provided credentials match the hardcoded values
    if role == "admin" and username in admin_credentials and password == admin_credentials[username]:
        return True
    else:
        return False
    
# Function to perform CRUD operations
def perform_crud_operation(conn, query):
    cursor = conn.cursor()
    try:
        # Execute the SQL query
        cursor.execute(query)
        # Commit the changes
        conn.commit()
        return True
    except Exception as e:
        # Print or log the error
        print(f"Error executing query: {e}")
        # Rollback the transaction in case of an error
        conn.rollback()
        return False
    finally:
        # Close the cursor
        cursor.close()

# Function to fetch data from the database
def fetch_data(conn, query):
    return pd.read_sql_query(query, conn)

# Function to show the Admin Dashboard
def show_admin_dashboard(conn):
    st.title("Admin Dashboard - Employee Data Table")

    # Retrieve data from session state
    employee_df = st.session_state.employee_df

    # Display the employee data table
    st.dataframe(employee_df)

    # Display CRUD buttons
    with st.form("add_employee_form"):
        st.title("Add Employee")
        new_employee_name = st.text_input("Employee Name:")
        new_employee_experience = st.number_input("Experience (in years):")
        new_employee_date_joined = st.date_input("Date Joined:")
        new_employee_date_of_birth = st.date_input("Date of Birth:")
        submit_button_add = st.form_submit_button(label="Add Employee")

    with st.form("update_employee_form"):
        st.title("Update Employee")
        employee_id = st.number_input("Employee ID to Update:")
        updated_experience = st.number_input("Updated Experience (in years):")
        update_button = st.form_submit_button(label="Update Employee")

    with st.form("delete_employee_form"):
        st.title("Delete Employee")
        employee_id_to_delete = st.number_input("Employee ID to Delete:")
        delete_button = st.form_submit_button(label="Delete Employee")

    if submit_button_add:
        # Logic to add the new employee to the database
        query = f"INSERT INTO EMPLOYEE (Employee_Name, Experience_Years, Date_Joined, Date_Of_Birth) " \
                f"VALUES ('{new_employee_name}', {new_employee_experience}, '{new_employee_date_joined}', '{new_employee_date_of_birth}');"
        success = perform_crud_operation(conn, query)

        if success:
            st.success("Employee added successfully!")
            # Update the DataFrame in session state
            employee_df = fetch_data(conn, "SELECT * FROM EMPLOYEE;")
            st.session_state.employee_df = employee_df
        else:
            st.error("Error adding employee. Please try again.")

    if update_button:
        # Logic to update the experience of the employee in the database
        query = f"UPDATE EMPLOYEE SET Experience_Years = {updated_experience} WHERE Employee_ID = {employee_id};"
        success = perform_crud_operation(conn, query)

        if success:
            st.success("Employee updated successfully!")
            # Update the DataFrame in session state
            employee_df = fetch_data(conn, "SELECT * FROM EMPLOYEE;")
            st.session_state.employee_df = employee_df
        else:
            st.error("Error updating employee. Please try again.")

    if delete_button:
        # Logic to delete the employee from the database
        query = f"DELETE FROM EMPLOYEE WHERE Employee_ID = {employee_id_to_delete};"
        success = perform_crud_operation(conn, query)

        if success:
            st.success("Employee deleted successfully!")
            # Update the DataFrame in session state
            employee_df = fetch_data(conn, "SELECT * FROM EMPLOYEE;")
            st.session_state.employee_df = employee_df
        else:
            st.error("Error deleting employee. Please try again.")

def employee_login(conn):
    st.title("Employee Login")
    set_background()
    
    # User input for role, username, and password
    role = st.selectbox("Select Role", ["Select Role", "admin"])
    username = st.text_input("Username:")
    password = st.text_input("Password:", type="password")

    if st.button("Login"):
        # Check if the provided credentials are valid
        if authenticate(username, password, role):
            st.success("Login Successful!")
            st.sidebar.success(f"Welcome, {username} ({role})!")
            # Save relevant data in session state
            st.session_state.employee_df = fetch_data(conn, "SELECT * FROM EMPLOYEE;")
            st.session_state.role = role
            # Redirect to the appropriate page based on the role
            if role == "admin":
                show_admin_dashboard(conn)
            else:
                st.warning("Invalid")
        else:
            st.error("Invalid username or password.")

if __name__ == "__main__":
    conn = create_connection()

    # Fetch employee data from the database only once when the application starts
    employee_query = "SELECT * FROM EMPLOYEE;"
    employee_df = fetch_data(conn, employee_query)

    # Store employee data in session state
    st.session_state.employee_df = employee_df

    employee_login(conn)
