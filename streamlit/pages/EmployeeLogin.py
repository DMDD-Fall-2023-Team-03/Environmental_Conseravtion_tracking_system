# import streamlit as st

# def authenticate(username, password, role):
#     # Hardcoded admin credentials
#     admin_credentials = {"admin": "admin"}

#     # Check if the provided credentials match the hardcoded values
#     if role == "admin" and username in admin_credentials and password == admin_credentials[username]:
#         return True
#     elif role in ["sanctuary staff", "vets", "guides", "coaches", "caretakers"]:
#         # Add logic to check the credentials for other roles from the data folder
#         # For simplicity, let's assume there's a dictionary of role-specific usernames and passwords
#         role_credentials = {
#             "sanctuary staff": {"staff1": "password1", "staff2": "password2"},
#             "vets": {"vet1": "password1", "vet2": "password2"},
#             "guides": {"guide1": "password1", "guide2": "password2"},
#             "coaches": {"coach1": "password1", "coach2": "password2"},
#             "caretakers": {"caretaker1": "password1", "caretaker2": "password2"},
#         }
#         return username in role_credentials[role] and password == role_credentials[role][username]
#     else:
#         return False

# def employee_login():
#     st.title("Employee Login")

#     # User input for role, username, and password
#     role = st.selectbox("Select Role", ["Select Role","admin", "sanctuary staff", "vets", "guides", "coaches", "caretakers"])
#     username = st.text_input("Username:")
#     password = st.text_input("Password:", type="password")

#     if st.button("Login"):
#         # Check if the provided credentials are valid
#         if authenticate(username, password, role):
#             st.success("Login Successful!")
#             st.sidebar.success(f"Welcome, {username} ({role})!")
#             # Redirect to the Home page after successful login
#             st.experimental_set_query_params(page="home")
#         else:
#             st.error("Invalid username or password")

# if __name__ == "__main__":
#     employee_login()
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# import streamlit as st
# import pandas as pd

# # Define the employee DML data
# employee_data = {
#     "Employee_Name": ['John Smith', 'Emily Johnson', 'Michael Brown', 'Jessica Davis', 'Matthew Wilson', 'Ashley Miller', 'Christopher Moore', 'Amanda Taylor', 'Elizabeth Anderson', 'Brian Thomas', 'Sophia Jackson', 'Ethan White', 'Madison Harris', 'Alexander Martin', 'Olivia Thompson', 'William Garcia', 'Isabella Martinez', 'David Rodriguez', 'Charlotte Lee', 'Benjamin Walker', 'Abigail Hall', 'Daniel Allen', 'Emma Young', 'Lucas Hernandez', 'Mia King'],
#     "Experience_Years": [5, 3, 7, 2, 8, 4, 10, 6, 9, 1, 3, 2, 5, 6, 4, 7, 8, 1, 2, 3, 9, 5, 4, 6, 7],
#     "Date_Joined": ['2018-01-10', '2020-04-15', '2016-05-30', '2021-02-20', '2015-08-11', '2019-07-22', '2013-03-18', '2017-11-10', '2014-12-05', '2022-06-01', '2020-09-14', '2021-08-23', '2018-01-07', '2017-04-03', '2019-10-16', '2016-02-11', '2015-05-28', '2022-07-04', '2021-09-15', '2020-12-21', '2014-10-30', '2018-06-19', '2019-03-23', '2017-08-09', '2016-11-01'],
#     "Date_Of_Birth": ['1998-04-19', '1997-04-15', '1999-05-30', '1999-02-20', '1997-08-11', '2001-07-22', '1992-03-18', '1999-11-10', '1995-12-05', '2004-06-01', '2001-09-14', '1999-08-23', '1999-01-07', '2000-04-03', '2001-10-16', '1999-02-11', '1997-05-28', '2004-07-04', '1999-09-15', '2002-12-21', '1995-10-30', '2000-06-19', '2001-03-23', '2001-08-09', '1999-11-01']
# }

# # Create a DataFrame from the employee data
# employee_df = pd.DataFrame(employee_data)

# def authenticate(username, password, role):
#     # Hardcoded admin credentials
#     admin_credentials = {"admin": "admin"}

#     # Check if the provided credentials match the hardcoded values
#     if role == "admin" and username in admin_credentials and password == admin_credentials[username]:
#         return True
#     elif role in ["sanctuary staff", "vets", "guides", "coaches", "caretakers"]:
#         # Add logic to check the credentials for other roles from the data folder
#         # For simplicity, let's assume there's a dictionary of role-specific usernames and passwords
#         role_credentials = {
#             "sanctuary staff": {"staff1": "password1", "staff2": "password2"},
#             "vets": {"vet1": "password1", "vet2": "password2"},
#             "guides": {"guide1": "password1", "guide2": "password2"},
#             "coaches": {"coach1": "password1", "coach2": "password2"},
#             "caretakers": {"caretaker1": "password1", "caretaker2": "password2"},
#         }
#         return username in role_credentials[role] and password == role_credentials[role][username]
#     else:
#         return False

# def employee_login():
#     st.title("Employee Login")

#     # User input for role, username, and password
#     role = st.selectbox("Select Role", ["Select Role", "admin", "sanctuary staff", "vets", "guides", "coaches", "caretakers"])
#     username = st.text_input("Username:")
#     password = st.text_input("Password:", type="password")

#     if st.button("Login"):
#         # Check if the provided credentials are valid
#         if authenticate(username, password, role):
#             st.success("Login Successful!")
#             st.sidebar.success(f"Welcome, {username} ({role})!")
#             # Redirect to the appropriate page based on the role
#             if role == "admin":
#                 show_admin_dashboard()
#             else:
#                 show_user_dashboard(role)
#         else:
#             st.error("Invalid username or password")

# def show_admin_dashboard():
#     st.title("Admin Dashboard - Employee Data Table")
#     st.dataframe(employee_df)

# def show_user_dashboard(role):
#     st.title(f"{role.capitalize()} Dashboard")
#     st.write(f"Welcome to the {role} dashboard. No specific data is displayed for {role} in this example.")

# if __name__ == "__main__":
#     employee_login()

#--------------------------------------------------------------------------------------------------

# # Sqlite Connection 
import pandas as pd
import streamlit as st
import sqlite3
import os
import sys 
print(sys.path)
#from data.employee import create_connection, create_tables

# Function to create a SQLite connection
def create_connection():
    conn = sqlite3.connect("./data/employee.db")
    return conn


# Function to set the working directory to the script's location
def set_working_directory():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    os.chdir(script_dir)
    print(f"Working directory set to: {script_dir}")

# Function to authenticate users
def authenticate(username, password, role):
    # Hardcoded admin credentials
    admin_credentials = {"admin": "admin"}

    # Check if the provided credentials match the hardcoded values
    if role == "admin" and username in admin_credentials and password == admin_credentials[username]:
        return True
    elif role in ["sanctuary staff", "vets", "guides", "coaches", "caretakers"]:
        # Add logic to check the credentials for other roles from the data folder
        # For simplicity, let's assume there's a dictionary of role-specific usernames and passwords
        role_credentials = {
            "sanctuary staff": {"staff1": "password1", "staff2": "password2"},
            "vets": {"vet1": "password1", "vet2": "password2"},
            "guides": {"guide1": "password1", "guide2": "password2"},
            "coaches": {"coach1": "password1", "coach2": "password2"},
            "caretakers": {"caretaker1": "password1", "caretaker2": "password2"},
        }
        return username in role_credentials[role] and password == role_credentials[role][username]
    else:
        return False

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

def employee_login():
    st.title("Employee Login")

    # User input for role, username, and password
    role = st.selectbox("Select Role", ["Select Role", "admin", "sanctuary staff", "vets", "guides", "coaches", "caretakers"])
    username = st.text_input("Username:")
    password = st.text_input("Password:", type="password")

    if st.button("Login"):
        # Check if the provided credentials are valid
        if authenticate(username, password, role):
            st.success("Login Successful!")
            st.sidebar.success(f"Welcome, {username} ({role})!")
            # Redirect to the appropriate page based on the role
            if role == "admin":
                show_admin_dashboard()
            else:
                show_user_dashboard(role)
        else:
            st.error("Invalid username or password")

def show_admin_dashboard():
    st.title("Admin Dashboard - Employee Data Table")

    # Create a SQLite connection
    conn = create_connection()

    # Fetch data from the database
    employee_query = "SELECT * FROM EMPLOYEE;"
    employee_df = fetch_data(conn, employee_query)

    # Display the employee data table
    st.dataframe(employee_df)

    # Close the connection
    conn.close()

def show_user_dashboard(role):
    st.title(f"{role.capitalize()} Dashboard")
    st.write(f"Welcome to the {role} dashboard. No specific data is displayed for {role} in this example.")

if __name__ == "__main__":
    employee_login()
    
