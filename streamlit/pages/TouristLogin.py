# pages/TouristLogin.py
# TouristLogin.py

import streamlit as st
import os
from datetime import datetime

# Function to save new user information to a text file
def save_new_user_info(first_name, last_name, mobile_number, username, password):
    data_folder = "./data/Tourist"
    os.makedirs(data_folder, exist_ok=True)
    file_path = os.path.join(data_folder, "tourist_database.txt")

    with open(file_path, "a") as file:
        file.write(f"{first_name},{last_name},{mobile_number},{username},{password}\n")

# Function to save feedback information to a text file
def save_feedback_info(username, date_of_last_visit, guide_name, feedback, star_ratings):
    data_folder = "./data/Tourist"
    os.makedirs(data_folder, exist_ok=True)
    file_path = os.path.join(data_folder, "feedback_database.txt")

    with open(file_path, "a") as file:
        file.write(f"{username},{date_of_last_visit},{guide_name},{feedback},{star_ratings}\n")

# Tourist Login Page
def tourist_login_page():
    st.title("Tourist Login Page")

    # Option to select new user registration or returning user login
    user_option = st.radio("Choose an option", ("New User Registration", "Returning User Login"))

    if user_option == "New User Registration":
        st.header("New User Registration")
        first_name = st.text_input("First Name")
        last_name = st.text_input("Last Name")
        mobile_number = st.text_input("Mobile Number")
        username = st.text_input("Username")
        password = st.text_input("Password", type="password", help="Choose a secure password")

        if st.button("Register"):
            save_new_user_info(first_name, last_name, mobile_number, username, password)
            st.success("Registration Successful! You can now log in.")

    elif user_option == "Returning User Login":
        st.header("Returning User Login")

        # Collect information for returning user
        username = st.text_input("Username")
        date_of_last_visit = st.date_input("Date of Last Visit", min_value=datetime(1900, 1, 1), max_value=datetime.today())
        guide_name = st.text_input("Guide Name")

        # Text box for writing feedback
        feedback = st.text_area("Write your feedback here")

        # Option to give star ratings
        star_ratings = st.slider("Star Ratings", min_value=1, max_value=5, value=3)

        if st.button("Submit Feedback"):
            save_feedback_info(username, date_of_last_visit, guide_name, feedback, star_ratings)
            st.success("Feedback submitted successfully!")


# Run the Tourist Login page
if __name__ == "__main__":
    tourist_login_page()
