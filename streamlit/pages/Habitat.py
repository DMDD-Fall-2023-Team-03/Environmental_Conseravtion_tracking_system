import streamlit as st
import random
import os
from PIL import Image

# Simulated database for flora species
flora_database = {
    1: {"species": "Flower1", "description": "Description for Flower1"},
    2: {"species": "Flower2", "description": "Description for Flower2"},
    # Add more flora records as needed
}

# Simulated database for fauna species
fauna_database = {
    1: {"species": "Animal1", "description": "Description for Animal1"},
    2: {"species": "Animal2", "description": "Description for Animal2"},
    # Add more fauna records as needed
}

def get_random_flora_image():
    flora_folder = "./data/Flora"
    flora_images = [os.path.join(flora_folder, file) for file in os.listdir(flora_folder) if not file.startswith('.')]
    return random.choice(flora_images)

def get_random_fauna_image():
    fauna_folder = "./data/Fauna"
    fauna_images = [os.path.join(fauna_folder, file) for file in os.listdir(fauna_folder) if not file.startswith('.')]
    return random.choice(fauna_images)

def get_random_flora_data():
    # Fetch a random flora record from the database
    random_key = random.choice(list(flora_database.keys()))
    return flora_database[random_key]

def get_random_fauna_data():
    # Fetch a random fauna record from the database
    random_key = random.choice(list(fauna_database.keys()))
    return fauna_database[random_key]

def get_random_climatic_conditions():
    # Replace this with your logic to fetch random climatic conditions
    climatic_conditions = "Temperature: 25°C, Humidity: 60%, Rainfall: 10mm"
    return climatic_conditions

def habitat_page():
    st.title("Habitat Page")

    # Select a zone
    zone = st.selectbox("Select Zone", range(1, 11))

    # Display random climatic conditions
    st.subheader("Climatic Conditions")
    climatic_conditions = get_random_climatic_conditions()
    st.write(climatic_conditions)
    
    # Choose between flora and fauna
    category = st.radio("Select Category", ["Flora", "Fauna"])

    # Display random flora/fauna data
    if category == "Flora":
        st.subheader("Flora Species")
        flora_data = get_random_flora_data()
        st.write(f"Species: {flora_data['species']}")
        st.write(f"Description: {flora_data['description']}")
        image_path = get_random_flora_image()
    else:
        st.subheader("Fauna Species")
        fauna_data = get_random_fauna_data()
        st.write(f"Species: {fauna_data['species']}")
        st.write(f"Description: {fauna_data['description']}")
        image_path = get_random_fauna_image()

    # Display random image from the selected category
    st.subheader("Random Image")
    try:
        image = Image.open(image_path)
        st.image(image, caption="Random Image", use_column_width=True)
    except Exception as e:
        st.warning(f"Error loading image: {e}")

# Run the app
if __name__ == "__main__":
    habitat_page()
