USE WildlifeSanctuary;
GO

------------INSERT DATA-------------

----SANCTUARY
INSERT INTO SANCTUARY (Sanctuary_Id, Name, Location, Area)
VALUES
  (1, 'GreenValley Sanctuary', 'Forest Hills', 1500.75),
  (2, 'WildLife Haven', 'Mountain Range', 2000.50),
  (3, 'Natures Refuge', 'River Valley', 1800.25),
  (4, 'Serenity Sanctuary', 'Meadow Plains', 1200.00),
  (5, 'Azure Forest Reserve', 'Coastal Area', 2500.30),
  (6, 'Harmony Wildlife Park', 'Canyon Region', 3000.75),
  (7, 'Majestic Wilderness', 'Plateau Zone', 2200.40),
  (8, 'Tranquil Oasis', 'Desert Area', 1700.60),
  (9, 'Eco Harmony Reserve', 'Tropical Rainforest', 2800.20),
  (10, 'Evergreen Wildlife Preserve', 'Island Oasis', 1900.80),
  (11, 'Golden Meadows Wildlife Sanctuary', 'Grassland Plains', 1400.45),
  (12, 'Pristine Pine Forest', 'Northern Woodlands', 2600.55),
  (13, 'Lush Canyon Retreat', 'Valley of Springs', 3200.90),
  (14, 'Crystal Clear Lake Wildlife Sanctuary', 'Lakefront Area', 2300.35),
  (15, 'Sunrise Savannah Reserve', 'Savannah Grasslands', 2000.25),
  (16, 'Mystic Mountain Wildlife Haven', 'Mountain Summit', 1800.70),
  (17, 'Whispering Willow Wildlife Sanctuary', 'Wooded Glade', 1400.80),
  (18, 'Riverside Oasis', 'Riverbank Area', 2100.95),
  (19, 'Diverse Ecosystem Sanctuary', 'Biosphere Reserve', 2700.40),
  (20, 'Aurora Boreal Wildlife Refuge', 'Polar Region', 1600.30),
  (21, 'Enchanted Everglades', 'Wetland Area', 1900.65),
  (22, 'Crimson Cliff Wildlife Sanctuary', 'Cliffside Region', 2300.20),
  (23, 'Golden Horizon Wildlife Reserve', 'Golden Sands', 2600.75),
  (24, 'Eternal Iceberg Wildlife Sanctuary', 'Antarctic Zone', 3100.80),
  (25, 'Celestial Cloud Forest', 'High Altitude Plateau', 2800.50);




----EMPLOYEE
INSERT INTO EMPLOYEE (Employee_Name, Experience_Years, Date_Joined, Date_Of_Birth) 
VALUES 
('John Smith', 5, '2018-01-10', '1998-04-19'),
('Emily Johnson', 3, '2020-04-15', '1997-04-15'),
('Michael Brown', 7, '2016-05-30', '1999-05-30'),
('Jessica Davis', 2, '2021-02-20', '1999-02-20'),
('Matthew Wilson', 8, '2015-08-11', '1997-08-11'),
('Ashley Miller', 4, '2019-07-22', '2001-07-22'),
('Christopher Moore', 10, '2013-03-18', '1992-03-18'),
('Amanda Taylor', 6, '2017-11-10', '1999-11-10'),
('Elizabeth Anderson', 9, '2014-12-05', '1995-12-05'),
('Brian Thomas', 1, '2022-06-01', '2004-06-01'),
('Sophia Jackson', 3, '2020-09-14', '2001-09-14'),
('Ethan White', 2, '2021-08-23', '1999-08-23'),
('Madison Harris', 5, '2018-01-07', '1999-01-07'),
('Alexander Martin', 6, '2017-04-03', '2000-04-03'),
('Olivia Thompson', 4, '2019-10-16', '2001-10-16'),
('William Garcia', 7, '2016-02-11', '1999-02-11'),
('Isabella Martinez', 8, '2015-05-28', '1997-05-28'),
('David Rodriguez', 1, '2022-07-04', '2004-07-04'),
('Charlotte Lee', 2, '2021-09-15', '1999-09-15'),
('Benjamin Walker', 3, '2020-12-21', '2002-12-21'),
('Abigail Hall', 9, '2014-10-30', '1995-10-30'),
('Daniel Allen', 5, '2018-06-19', '2000-06-19'),
('Emma Young', 4, '2019-03-23', '2001-03-23'),
('Lucas Hernandez', 6, '2017-08-09', '2001-08-09'),
('Mia King', 7, '2016-11-01', '1999-11-01');



----CARETAKER
INSERT INTO CARETAKER (CARETAKER_ID, PLANT_CARE_SPECIALISATION, EDUCATION_LEVEL) 
VALUES 
(1, 'Ornamental Plants', 'Bachelors Degree'),
(2, 'Tropical Plants', 'Masters Degree'),
(3, 'Desert Plants', 'Bachelors Degree'),
(4, 'Aquatic Plants', 'College Diploma'),
(5, 'Ferns', 'PhD'),
(6, 'Cacti', 'Associate Degree'),
(7, 'Succulents', 'Bachelors Degree'),
(8, 'Herbs', 'Masters Degree'),
(9, 'Shrubs', 'High School Diploma'),
(10, 'Trees', 'Bachelors Degree'),
(11, 'Flowering Plants', 'College Diploma'),
(12, 'Grasses', 'Associate Degree'),
(13, 'Vines', 'PhD'),
(14, 'Edible Plants', 'Bachelors Degree'),
(15, 'Medicinal Plants', 'Masters Degree'),
(16, 'Orchids', 'Associate Degree'),
(17, 'Palms', 'High School Diploma'),
(18, 'Bonsai', 'Bachelors Degree'),
(19, 'Bulbs', 'College Diploma'),
(20, 'Fungi', 'Masters Degree'),
(21, 'Mosses', 'PhD'),
(22, 'Algae', 'Associate Degree'),
(23, 'Carnivorous Plants', 'Bachelors Degree'),
(24, 'Gymnosperms', 'High School Diploma'),
(25, 'Angiosperms', 'College Diploma');


----SANCTUARY_STAFF
INSERT INTO SANCTUARY_STAFF (SANCTUARY_STAFF_ID, CERTIFICATION, EDUCATION_AND_TRAINING) 
VALUES 
(1, 'Wildlife Management Certification', 'BSc in Environmental Science'),
(2, 'Endangered Species Specialist', 'MSc in Conservation Biology'),
(3, 'Habitat Restoration Certificate', 'BSc in Ecology'),
(4, 'Wildlife Rehabilitation License', 'Diploma in Veterinary Technology'),
(5, 'Botanical Garden Management', 'MA in Botany'),
(6, 'Zookeeping Certificate', 'BSc in Zoology'),
(7, 'Marine Conservation Certificate', 'MS in Marine Biology'),
(8, 'Ornithology Specialist Certification', 'PhD in Avian Sciences'),
(9, 'Herpetology Certification', 'BSc in Animal Science'),
(10, 'Mammalogy Certification', 'MS in Wildlife Biology'),
(11, 'Wildlife Tracking Certification', 'BSc in Natural Resource Management'),
(12, 'Conservation Education Certificate', 'MA in Environmental Education'),
(13, 'Aquatic Habitat Specialist', 'PhD in Aquatic Science'),
(14, 'Pest Management License', 'BSc in Agriculture'),
(15, 'Ecotourism Certificate', 'BA in Sustainable Tourism'),
(16, 'Natural Resource Policy Certificate', 'MSc in Environmental Policy'),
(17, 'Animal Behavior Specialist', 'PhD in Animal Behavior'),
(18, 'Wilderness First Aid Certification', 'Certified Wilderness Responder'),
(19, 'GIS Specialist for Conservation', 'MS in Geographic Information Systems'),
(20, 'Invasive Species Management Certificate', 'MSc in Ecology'),
(21, 'Climate Change Analyst Certificate', 'MA in Climate Science'),
(22, 'Renewable Resources Management', 'BSc in Renewable Resources'),
(23, 'Forest Conservation Technician', 'Diploma in Forestry'),
(24, 'Soil Conservation Certification', 'MS in Soil Science'),
(25, 'Environmental Law Certificate', 'JD with specialization in Environmental Law');


----GUIDE
INSERT INTO GUIDE (GUIDE_ID, TRAINING_AND_CERTIFICATIONS) 
VALUES 
(1, 'Certified Tour Guide, CPR & First Aid'),
(2, 'Wilderness First Responder, Bird Watching Specialist'),
(3, 'Cultural Heritage Guide Certification, Multilingual'),
(4, 'Outdoor Leadership Training, Kayaking Guide'),
(5, 'Eco-Tourism Certificate, Environmental Educator'),
(6, 'Nature Interpretation Certificate, Hiking Guide'),
(7, 'Adventure Guide Diploma, Rock Climbing Instructor'),
(8, 'Safari Guide Certification, Wildlife Tracking Expert'),
(9, 'Scuba Diving Instructor, Marine Life Specialist'),
(10, 'Botanical Tour Guide, Plant Identification Expert'),
(11, 'Historical Sites Guide, Archival Research Training'),
(12, 'Astronomy Guide, Telescope Operation Certificate'),
(13, 'Certified Cave Guide, Spelunking Safety Trainer'),
(14, 'Snow Sports Guide, Avalanche Safety Certified'),
(15, 'Rafting Guide Certification, Swiftwater Rescue Trained'),
(16, 'Photography Tour Guide, Professional Photographer'),
(17, 'Food and Wine Tour Specialist, Culinary Background'),
(18, 'Art Tour Guide, Degree in Art History'),
(19, 'Urban Exploration Guide, Architectural Knowledge'),
(20, 'Geology Tour Guide, Earth Science Degree'),
(21, 'Certified Bicycle Tour Guide, Bike Mechanic Skills'),
(22, 'Museum Guide, Curatorial Training'),
(23, 'Wildlife Safari Leader, Zoology Degree'),
(24, 'Climbing Guide, Certified in Mountain Safety'),
(25, 'Fishing Guide, Deep Sea Fishing Expert');



----COACHES
INSERT INTO COACHES (COACH_ID, LEVEL_OF_COACHING) 
VALUES 
(1, 'Beginner Level'),
(2, 'Intermediate Level'),
(3, 'Advanced Level'),
(4, 'Professional Level'),
(5, 'Youth Level'),
(6, 'College Level'),
(7, 'High School Level'),
(8, 'Community Level'),
(9, 'Amateur Level'),
(10, 'Semi-Pro Level'),
(11, 'Pro Level'),
(12, 'National Level'),
(13, 'International Level'),
(14, 'Olympic Level'),
(15, 'Recreational Level'),
(16, 'Junior Level'),
(17, 'Senior Level'),
(18, 'Master Level'),
(19, 'Local League Level'),
(20, 'Regional Level'),
(21, 'State Level'),
(22, 'National Tournament Level'),
(23, 'Expert Level'),
(24, 'Assistant Coach Level'),
(25, 'Head Coach Level');


----HABITAT
INSERT INTO HABITAT (Habitat_Id, Sanctuary_Id, Habitat_Type, Habitat_Size, PH_Level, Soil_Fertility, Air_Purity, Humidity, Temperature)
VALUES
  (1, 1, 'Evergreen Forest', 500.25, 6.8, 'Rich Loam', 25.5, 70.2, 22.5),
  (2, 2, 'Mountain Cave', 800.30, 7.2, 'Rocky Soil', 21.8, 65.5, 18.7),
  (3, 3, 'Riverside Marshland', 700.20, 6.5, 'Silty Soil', 28.3, 75.0, 24.0),
  (4, 4, 'Meadow Grassland', 450.75, 6.9, 'Fertile Soil', 23.0, 68.5, 20.5),
  (5, 5, 'Coastal Mangrove', 1000.50, 7.5, 'Sandy Soil', 26.5, 72.8, 23.2),
  (6, 6, 'Canyon Cliffs', 1200.75, 7.8, 'Loamy Soil', 20.2, 60.0, 17.5),
  (7, 7, 'Plateau Grasslands', 900.40, 6.7, 'Silt Loam', 24.8, 71.5, 21.8),
  (8, 8, 'Desert Oasis', 650.60, 7.0, 'Sandy Loam', 29.5, 78.2, 26.0),
  (9, 9, 'Tropical Rainforest Canopy', 1100.20, 6.4, 'Humus-Rich Soil', 22.5, 67.5, 19.5),
  (10, 10, 'Island Biotic Zone', 750.80, 7.3, 'Volcanic Soil', 27.0, 74.5, 24.8),
  (11, 11, 'Grassland Prairie', 500.45, 6.6, 'Prairie Soil', 23.8, 69.2, 21.0),
  (12, 12, 'Pine Forest Canopy', 950.55, 7.1, 'Coniferous Soil', 21.0, 64.8, 18.2),
  (13, 13, 'Canyon Oasis', 1300.90, 7.4, 'Silty Sand', 19.5, 59.8, 16.5),
  (14, 14, 'Lakefront Wetlands', 850.35, 6.8, 'Marshy Soil', 25.2, 70.8, 22.0),
  (15, 15, 'Savannah Grasslands', 800.25, 7.2, 'Savannah Soil', 20.7, 63.5, 17.8),
  (16, 16, 'Mountain Summit Alpine', 700.70, 6.5, 'Alpine Soil', 27.5, 76.0, 25.2),
  (17, 17, 'Wooded Glade', 450.80, 6.9, 'Woodland Soil', 23.5, 68.0, 20.0),
  (18, 18, 'Riverbank Ecosystem', 600.95, 7.7, 'Riverbank Soil', 26.0, 73.2, 23.5),
  (19, 19, 'Biosphere Rainforest', 950.40, 6.3, 'Biosphere Soil', 21.2, 66.5, 18.5),
  (20, 20, 'Polar Tundra', 550.30, 7.0, 'Tundra Soil', 28.0, 77.5, 25.5),
  (21, 21, 'Wetland Biotic Zone', 650.65, 6.6, 'Wetland Soil', 24.0, 72.0, 21.2),
  (22, 22, 'Cliffside Biotic Zone', 900.20, 7.3, 'Cliffside Soil', 22.8, 67.8, 19.8),
  (23, 23, 'Golden Sands Coastal', 1050.75, 7.8, 'Sandy Loam', 20.5, 62.5, 17.0),
  (24, 24, 'Antarctic Iceberg', 1200.80, 6.7, 'Iceberg Soil', 19.0, 59.0, 16.2),
  (25, 25, 'High Altitude Plateau', 1100.50, 6.4, 'Plateau Soil', 21.5, 66.0, 18.0);



----FLORA
INSERT INTO FLORA (Flora_Id, Caretaker_Id, Species)
VALUES
  (1, 1, 'Rose'),
  (2, 2, 'Orchid'),
  (3, 3, 'Cactus'),
  (4, 4, 'Water Lily'),
  (5, 5, 'Fern'),
  (6, 6, 'Aloe Vera'),
  (7, 7, 'Succulent'),
  (8, 8, 'Lavender'),
  (9, 9, 'Azalea'),
  (10, 10, 'Oak Tree'),
  (11, 11, 'Sunflower'),
  (12, 12, 'Bamboo'),
  (13, 13, 'Ivy'),
  (14, 14, 'Tomato Plant'),
  (15, 15, 'Echinacea'),
  (16, 16, 'Bonsai Tree'),
  (17, 17, 'Palm Tree'),
  (18, 18, 'Bonsai'),
  (19, 19, 'Tulip'),
  (20, 20, 'Mushroom'),
  (21, 21, 'Moss'),
  (22, 22, 'Algae Bloom'),
  (23, 23, 'Venus Flytrap'),
  (24, 24, 'Pine Tree'),
  (25, 25, 'Rosemary');


----FLORA_HABITAT
INSERT INTO FLORA_HABITAT (Habitat_Id, Flora_Id)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20),
  (21, 21),
  (22, 22),
  (23, 23),
  (24, 24),
  (25, 25);


----VET----
INSERT INTO VET (VET_ID, LICENSE_NUMBER, YEARS_OF_EXPERIENCE, SPECIALISATION) 
VALUES 
(1, 123456, 10, 'General Practitioner'),
(2, 123457, 8, 'Surgeon'),
(3, 123458, 5, 'Surgeon'),
(4, 123459, 7, 'Cardiology'),
(5, 123460, 6, 'General Practitioner'),
(6, 123461, 9, 'General Practitioner'),
(7, 123462, 3, 'Cardiology'),
(8, 123463, 2, 'Radiology'),
(9, 123464, 4, 'General Practitioner'),
(10, 123465, 11, 'General Practitioner'),
(11, 123466, 15, 'Surgeon'),
(12, 123467, 13, 'Neurology'),
(13, 123468, 12, 'General Practitioner'),
(14, 123469, 14, 'Radiology'),
(15, 123470, 20, 'Surgeon'),
(16, 123471, 17, 'Radiology'),
(17, 123472, 16, 'General Practitioner'),
(18, 123473, 19, 'Surgeon'),
(19, 123474, 18, 'Radiology'),
(20, 123475, 7, 'Cardiology'),
(21, 123476, 5, 'Radiology'),
(22, 123477, 8, 'Surgeon'),
(23, 123478, 4, 'General Practitioner'),
(24, 123479, 3, 'Radiology'),
(25, 123480, 22, 'General Practitioner');



----WILDLIFE
INSERT INTO WILDLIFE (VET_ID, Wildlife_Type, Population, Species)
VALUES
  (1, 'Carnivore', 100, 'Lion'),
  (2, 'Herbivore', 200, 'Elephant'),
  (3, 'Omnivore', 50, 'Bear'),
  (4, 'Carnivore', 75, 'Tiger'),
  (5, 'Herbivore', 150, 'Giraffe'),
  (6, 'Omnivore', 30, 'Raccoon'),
  (7, 'Carnivore', 80, 'Leopard'),
  (8, 'Herbivore', 120, 'Hippopotamus'),
  (9, 'Omnivore', 40, 'Fox'),
  (10, 'Carnivore', 60, 'Cheetah'),
  (11, 'Herbivore', 180, 'Zebra'),
  (12, 'Omnivore', 35, 'Panda'),
  (13, 'Carnivore', 90, 'Jaguar'),
  (14, 'Herbivore', 220, 'Rhino'),
  (15, 'Omnivore', 45, 'Opossum'),
  (16, 'Carnivore', 70, 'Panther'),
  (17, 'Herbivore', 130, 'Kangaroo'),
  (18, 'Omnivore', 55, 'Badger'),
  (19, 'Carnivore', 85, 'Hyena'),
  (20, 'Herbivore', 160, 'Gorilla'),
  (21, 'Omnivore', 25, 'Raven'),
  (22, 'Carnivore', 95, 'Cougar'),
  (23, 'Herbivore', 140, 'Wildebeest'),
  (24, 'Omnivore', 48, 'Coati'),
  (25, 'Carnivore', 65, 'Lynx');
 

----CARNIVORE
INSERT INTO CARNIVORE (Carnivore_ID, Pack_Size, Hunting_Activity_Period)
VALUES
  (1, 10, 'Nocturnal'),    -- Lion
  (4, 8, 'Nocturnal'),      -- Tiger
  (7, 12, 'Crepuscular'),   -- Leopard
  (10, 6, 'Nocturnal'),     -- Cheetah
  (13, 9, 'Crepuscular'),   -- Jaguar
  (16, 7, 'Diurnal'),       -- Panther
  (19, 11, 'Nocturnal'),    -- Hyena
  (22, 8, 'Crepuscular'),   -- Cougar
  (25, 10, 'Diurnal');     -- Lynx

-----OMNIVORE
INSERT INTO OMNIVORE (Omnivore_ID, Foraging_Behavior)
VALUES
  (3, 'Scavenging'),            -- Bear
  (6, 'Foraging'),              -- Raccoon
  (9, 'Hunting and Foraging'),  -- Fox
  (12, 'Bamboo Foraging'),      -- Panda
  (15, 'Foraging'),             -- Opossum
  (18, 'Foraging'),             -- Badger
  (21, 'Scavenging'),           -- Raven
  (24, 'Foraging'),             -- Coati
  (25, 'Hunting and Foraging'); -- Lynx

-----HERBIVORE
INSERT INTO HERBIVORE (Herbivore_ID, Grazing_Habits, Migratory_Patterns)
VALUES
  (2, 'Grass', 'Non-Migratory'),   -- Elephant
  (5, 'Leaves', 'Migratory'),      -- Giraffe
  (8, 'Grass', 'Non-Migratory'),   -- Hippopotamus
  (11, 'Grass', 'Migratory'),      -- Zebra
  (14, 'Grass', 'Non-Migratory'),  -- Rhino
  (17, 'Grass', 'Migratory'),      -- Kangaroo
  (20, 'Leaves', 'Non-Migratory'), -- Gorilla
  (23, 'Grass', 'Migratory');      -- Wildebeest



-----WILDLIFE_TRACKING
INSERT INTO WILDLIFE_TRACKING (WildLife_Id, Employee_Id, GPS_location, Tracking_Date)
VALUES
  (1, 1, '35.6895° N, 139.6917° E', '2023-11-25'),
  (2, 2, '40.7128° N, 74.0060° W', '2023-11-24'),
  (3, 3, '38.9072° N, 77.0370° W', '2023-11-23'),
  (4, 4, '34.0522° N, 118.2437° W', '2023-11-22'),
  (5, 5, '37.7749° N, 122.4194° W', '2023-11-21'),
  (6, 6, '41.8781° N, 87.6298° W', '2023-11-20'),
  (7, 7, '33.7490° N, 84.3880° W', '2023-11-19'),
  (8, 8, '38.6270° N, 90.1994° W', '2023-11-18'),
  (9, 9, '41.8781° N, 87.6298° W', '2023-11-17'),
  (10, 10, '32.7767° N, 96.7970° W', '2023-11-16'),
  (11, 11, '40.7128° N, 74.0060° W', '2023-11-15'),
  (12, 12, '37.7749° N, 122.4194° W', '2023-11-14'),
  (13, 13, '34.0522° N, 118.2437° W', '2023-11-13'),
  (14, 14, '33.7490° N, 84.3880° W', '2023-11-12'),
  (15, 15, '38.6270° N, 90.1994° W', '2023-11-11'),
  (16, 16, '41.8781° N, 87.6298° W', '2023-11-10'),
  (17, 17, '32.7767° N, 96.7970° W', '2023-11-09'),
  (18, 18, '40.7128° N, 74.0060° W', '2023-11-08'),
  (19, 19, '37.7749° N, 122.4194° W', '2023-11-07'),
  (20, 20, '34.0522° N, 118.2437° W', '2023-11-06'),
  (21, 21, '33.7490° N, 84.3880° W', '2023-11-05'),
  (22, 22, '38.6270° N, 90.1994° W', '2023-11-04'),
  (23, 23, '41.8781° N, 87.6298° W', '2023-11-03'),
  (24, 24, '32.7767° N, 96.7970° W', '2023-11-02'),
  (25, 25, '40.7128° N, 74.0060° W', '2023-11-01');




----TOURIST
INSERT INTO TOURIST (Tourist_Id, Guide_Id, Sanctuary_Id, Tourist_Name, Phone_Number, Email)
VALUES
  (1, 1, 1, 'Emma Clark', '1002003001', 'emma.clark@email.com'),
  (2, 2, 1, 'Liam Johnson', '1002003002', 'liam.johnson@email.com'),
  (3, 3, 3, 'Olivia Brown', '1002003003', 'olivia.brown@email.com'),
  (4, 4, 4, 'Noah Davis', '1002003004', 'noah.davis@email.com'),
  (5, 5, 5, 'Ava Miller', '1002003005', 'ava.miller@email.com'),
  (6, 6, 6, 'William Taylor', '1002003006', 'william.taylor@email.com'),
  (7, 7, 7, 'Sophia Wilson', '1002003007', 'sophia.wilson@email.com'),
  (8, 8, 8, 'James Anderson', '1002003008', 'james.anderson@email.com'),
  (9, 9, 9, 'Isabella Thomas', '1002003009', 'isabella.thomas@email.com'),
  (10, 10, 10, 'Benjamin Martin', '1002003010', 'benjamin.martin@email.com'),
  (11, 11, 11, 'Mia Hernandez', '1002003011', 'mia.hernandez@email.com'),
  (12, 12, 12, 'Lucas Moore', '1002003012', 'lucas.moore@email.com'),
  (13, 13, 13, 'Amelia Jackson', '1002003013', 'amelia.jackson@email.com'),
  (14, 14, 14, 'Mason Lee', '1002003014', 'mason.lee@email.com'),
  (15, 15, 15, 'Harper Perez', '1002003015', 'harper.perez@email.com'),
  (16, 16, 16, 'Ethan White', '1002003016', 'ethan.white@email.com'),
  (17, 17, 17, 'Evelyn Harris', '1002003017', 'evelyn.harris@email.com'),
  (18, 18, 18, 'Alexander Clark', '1002003018', 'alexander.clark@email.com'),
  (19, 19, 19, 'Abigail Lewis', '1002003019', 'abigail.lewis@email.com'),
  (20, 20, 20, 'Sebastian Walker', '1002003020', 'sebastian.walker@email.com'),
  (21, 21, 21, 'Elizabeth Young', '1002003021', 'elizabeth.young@email.com'),
  (22, 22, 22, 'Jack Hall', '1002003022', 'jack.hall@email.com'),
  (23, 23, 23, 'Sofia Allen', '1002003023', 'sofia.allen@email.com'),
  (24, 24, 24, 'Charlotte King', '1002003024', 'charlotte.king@email.com'),
  (25, 25, 25, 'Owen Wright', '1002003025', 'owen.wright@email.com');

----VISITS
INSERT INTO VISITS (Visit_Id, Sanctuary_Id, Tourist_Id, Date_of_Visit, Feedback) VALUES
(1, 1, 1, '2023-01-01', 'An unforgettable experience with nature.'),
(2, 2, 2, '2023-01-02', 'Very informative and enjoyable tour.'),
(3, 3, 3, '2023-01-03', 'A peaceful and beautiful sanctuary.'),
(4, 4, 4, '2023-01-04', 'Loved the diversity of wildlife.'),
(5, 5, 5, '2023-01-05', 'An excellent visit, highly recommend.'),
(6, 6, 6, '2023-01-06', 'The guide was knowledgeable and friendly.'),
(7, 7, 7, '2023-01-07', 'Great for families and children.'),
(8, 8, 8, '2023-01-08', 'A serene escape from the city.'),
(9, 9, 9, '2023-01-09', 'Impressed by the conservation efforts.'),
(10, 10, 10, '2023-01-10', 'A must-visit for nature lovers.'),
(11, 11, 11, '2023-01-11', 'The natural beauty is breathtaking.'),
(12, 12, 12, '2023-01-12', 'Enjoyed learning about the local ecosystem.'),
(13, 13, 13, '2023-01-13', 'A perfect blend of education and entertainment.'),
(14, 14, 14, '2023-01-14', 'The walking trails are well-maintained.'),
(15, 15, 15, '2023-01-15', 'Saw a wide variety of birds and plants.'),
(16, 16, 16, '2023-01-16', 'A relaxing and informative day out.'),
(17, 17, 17, '2023-01-17', 'The staff are passionate about their work.'),
(18, 18, 18, '2023-01-18', 'Learnt a lot about wildlife conservation.'),
(19, 19, 19, '2023-01-19', 'The kids had a great time exploring.'),
(20, 20, 20, '2023-01-20', 'Impressive variety of habitats.'),
(21, 21, 21, '2023-01-21', 'The guided tour added so much value.'),
(22, 22, 22, '2023-01-22', 'A tranquil and beautiful place to visit.'),
(23, 23, 23, '2023-01-23', 'We loved the interactive exhibits.'),
(24, 24, 24, '2023-01-24', 'An excellent way to learn about nature.'),
(25, 25, 25, '2023-01-25', 'A wonderful experience, will visit again.');



----OUTREACH_PROGRAM
INSERT INTO OUTREACH_PROGRAM (Coach_Id, Organisation_Name, Organisation_Type, Date_of_Affiliation, Program_Period) 
VALUES
(1, 'Verdant Visions', 'Wildlife Rehabilitation', '2023-01-01', 12),
(2, 'Blue Planet Alliance', 'Environmental Advocacy', '2023-02-01', 6),
(3, 'Wildhaven Workshop', 'Habitat Preservation', '2023-03-01', 8),
(4, 'EcoPioneer Group', 'Environmental Advocacy', '2023-04-01', 10),
(5, 'Green Canopy Network', 'Wildlife Rehabilitation', '2023-05-01', 9),
(6, 'Solar Synergy Collective', 'Environmental Advocacy', '2023-05-01', 9),
(7, 'AquaGuard Foundation', 'Environmental Advocacy', '2023-05-01', 9),
(8, 'Natures Nexus Society', 'Wildlife Rehabilitation', '2023-05-01', 9),
(9, 'Earthwise Educators', 'Habitat Preservation', '2023-05-01', 9),
(10, 'Conservatech Innovators', 'Wildlife Rehabilitation', '2023-05-01', 9),
(11, 'FloraFauna Friends' , 'Habitat Preservation', '2023-05-01', 9),
(12, 'Climate Crusaders', 'Wildlife Rehabilitation', '2023-05-01', 9),
(13, 'EcoEthic Enthusiasts', 'Habitat Preservation', '2023-05-01', 9),
(14, 'WildTrail Activists', 'Wildlife Rehabilitation', '2023-05-01', 9),
(15, 'SolarFlare Solutions', 'Wildlife Rehabilitation', '2023-05-01', 9),
(16, 'Ocean Odyssey Outreach', 'Environmental Advocacy', '2023-05-01', 9),
(17, 'Peak Pursuit Partners', 'Habitat Preservation', '2023-05-01', 9),
(18, 'Renewable Roots Group', 'Wildlife Rehabilitation', '2023-05-01', 9),
(19, 'EcoEngage Community', 'Habitat Preservation', '2023-05-01', 9),
(20, 'TerraTacticians', 'Habitat Preservation', '2023-05-01', 9),
(21, 'Vital Valley Ventures', 'Environmental Advocacy', '2023-05-01', 9),
(22, 'GreenGrowth Guardians', 'Wildlife Rehabilitation', '2023-05-01', 9),
(23, 'Habitat Harmony Hub', 'Environmental Advocacy', '2023-05-01', 9),
(24, 'EcoIntellect Network', 'Wildlife Rehabilitation', '2023-05-01', 9),
(25, 'Planet Pioneers Project ', 'Environmental Advocacy', '2023-12-01', 7);


----VOLUNTEER
INSERT INTO VOLUNTEER (Program_Id, Coach_Id, Name, Start_Date, End_Date) VALUES
(1, 1, 'Alex Johnson', '2023-01-15', '2023-07-15'),
(2, 2, 'Brianna Smith', '2023-02-01', '2023-08-01'),
(3, 3, 'Carlos Ray', '2023-03-10', '2023-09-10'),
(4, 4, 'Diana Grace', '2023-04-05', '2023-10-05'),
(5, 5, 'Evan Wallace', '2023-05-20', '2023-11-20'),
(6, 6, 'Fiona Gallagher', '2023-06-15', '2023-12-15'),
(7, 7, 'George Knight', '2023-07-01', '2024-01-01'),
(8, 8, 'Hannah Zest', '2023-08-08', '2024-02-08'),
(9, 9, 'Ian Dexter', '2023-09-12', '2024-03-12'),
(10, 10, 'Julia Parks', '2023-10-17', '2024-04-17'),
(11, 11, 'Kevin Malone', '2023-11-22', '2024-05-22'),
(12, 12, 'Linda Gale', '2023-12-30', '2024-06-30'),
(13, 13, 'Mike Donovan', '2023-01-09', '2023-07-09'),
(14, 14, 'Nina Ochoa', '2023-02-14', '2023-08-14'),
(15, 15, 'Oscar Peters', '2023-03-19', '2023-09-19'),
(16, 16, 'Pamela Rose', '2023-04-23', '2023-10-23'),
(17, 17, 'Quinn Fabray', '2023-05-28', '2023-11-28'),
(18, 18, 'Rita Sands', '2023-06-02', '2023-12-02'),
(19, 19, 'Steve Jobs', '2023-07-07', '2024-01-07'),
(20, 20, 'Tina Fey', '2023-08-12', '2024-02-12'),
(21, 21, 'Uma Thurman', '2023-09-17', '2024-03-17'),
(22, 22, 'Victor Vance', '2023-10-22', '2024-04-22'),
(23, 23, 'Wendy Darling', '2023-11-27', '2024-05-27'),
(24, 24, 'Xander York', '2023-12-02', '2024-06-02'),
(25, 25, 'Yara Greyjoy', '2024-01-07', '2024-07-07');



----SUPPLIER
INSERT INTO SUPPLIER (Supplier_ID, Supplier_Name, Contact) 
VALUES 
(1, 'Quality Goods Inc.', 'contact@qualitygoods.com'),
(2, 'Fresh Farm Produce', 'sales@freshfarm.com'),
(3, 'Organic Harvest Co.', 'info@organicharvest.com'),
(4, 'Gourmet Selections', 'support@gourmetselects.com'),
(5, 'Bakers Delight Supplies', 'orders@bakersdelight.com'),
(6, 'Prime Meat Suppliers', 'service@primemeat.com'),
(7, 'Seafood Direct Ltd.', 'inquiries@seafooddirect.com'),
(8, 'Whole Grain Providers', 'contact@wholegrainpro.com'),
(9, 'Dairy Best', 'sales@dairybest.com'),
(10, 'Sweet Treats Confectionery', 'support@sweettreats.com'),
(11, 'Beverage Distributors Inc.', 'info@beverageinc.com'),
(12, 'Frozen Delights LLC', 'orders@frozendelights.com'),
(13, 'Catering Essentials', 'service@cateringessentials.com'),
(14, 'Exotic Spices World', 'inquiries@exoticspices.com'),
(15, 'Healthy Snacks Ltd.', 'contact@healthysnacks.com'),
(16, 'Eco Produce', 'sales@ecoproduce.com'),
(17, 'Farm Fresh Organics', 'support@farmfreshorganics.com'),
(18, 'Urban Greens', 'info@urbangreens.com'),
(19, 'Natura Foods', 'contact@naturafoods.com'),
(20, 'Pure Harvest', 'sales@pureharvest.com'),
(21, 'AgriBest Supplies', 'support@agribest.com'),
(22, 'Fresh Picks', 'orders@freshpicks.com'),
(23, 'Garden Essentials', 'service@gardenessentials.com'),
(24, 'Healthy Choice Produce', 'inquiries@healthychoice.com'),
(25, 'Green Valley Suppliers', 'contact@greenvalley.com');


----FOOD
INSERT INTO food (food_id, food_name, food_type) 
VALUES 
(1, 'Apples', 'Fruit'),
(2, 'Spinach', 'Vegetable'),
(3, 'Almonds', 'Vegetable'),
(4, 'Salmon', 'Fish'),
(5, 'Chicken Breast', 'Poultry'),
(6, 'Beef Steak', 'Red Meat'),
(7, 'Pork Chops', 'Red Meat'),
(8, 'Chicken Breast', 'Poultry'),
(9, 'Turkey Breast', 'Poultry'),
(10, 'Spinach', 'Vegetable'),
(11, 'Turkey Breast', 'Poultry'),
(12, 'Pork Chops', 'Red Meat'),
(13, 'Banana', 'Fruit'),
(14, 'Carrots', 'Vegetable'),
(15, 'Beef Steak', 'Red Meat'),
(16, 'Bananas', 'Fruit'),
(17, 'Broccoli', 'Vegetable'),
(18, 'Salmon', 'Fish'),
(19, 'Trout', 'Fish'),
(20, 'Turkey Breast', 'Poultry'),
(21, 'Lamb Chops', 'Red Meat'),
(22, 'Spinach', 'Vegetable'),
(23, 'Turkey Breast', 'Poultry'),
(24, 'Chicken Breast', 'Poultry'),
(25, 'Carrots', 'Vegetable');


----FOOD_SUPPLY
INSERT INTO food_supply (supply_ID, Food_id, supplier_id, Food_Quantity, restocking_date, date_of_delivery) 
VALUES 
(1, 1, 1, 100, '2023-01-01', '2023-01-02'),
(2, 2, 2, 200, '2023-01-03', '2023-01-04'),
(3, 3, 3, 150, '2023-01-05', '2023-01-06'),
(4, 4, 4, 120, '2023-01-07', '2023-01-08'),
(5, 5, 5, 130, '2023-01-09', '2023-01-10'),
(6, 6, 6, 140, '2023-01-11', '2023-01-12'),
(7, 7, 7, 110, '2023-01-13', '2023-01-14'),
(8, 8, 8, 160, '2023-01-15', '2023-01-16'),
(9, 9, 9, 170, '2023-01-17', '2023-01-18'),
(10, 10, 10, 180, '2023-01-19', '2023-01-20'),
(11, 11, 11, 190, '2023-01-21', '2023-01-22'),
(12, 12, 12, 210, '2023-01-23', '2023-01-24'),
(13, 13, 13, 220, '2023-01-25', '2023-01-26'),
(14, 14, 14, 230, '2023-01-27', '2023-01-28'),
(15, 15, 15, 240, '2023-01-29', '2023-01-30'),
(16, 16, 16, 250, '2023-02-01', '2023-02-02'),
(17, 17, 17, 260, '2023-02-03', '2023-02-04'),
(18, 18, 18, 270, '2023-02-05', '2023-02-06'),
(19, 19, 19, 280, '2023-02-07', '2023-02-08'),
(20, 20, 20, 290, '2023-02-09', '2023-02-10'),
(21, 21, 21, 300, '2023-02-11', '2023-02-12'),
(22, 22, 22, 310, '2023-02-13', '2023-02-14'),
(23, 23, 23, 320, '2023-02-15', '2023-02-16'),
(24, 24, 24, 330, '2023-02-17', '2023-02-18'),
(25, 25, 25, 340, '2023-02-19', '2023-02-20');


----WILDLIFE_FOOD
INSERT INTO WILDLIFE_FOOD (Wildlife_ID, Food_ID, Quantity_Supplied, Date_Supplied) 
VALUES 
(1, 1, 100, '2023-01-01'),
(2, 2, 200, '2023-01-02'),
(3, 3, 150, '2023-01-03'),
(4, 4, 120, '2023-01-04'),
(5, 5, 130, '2023-01-05'),
(6, 6, 140, '2023-01-06'),
(7, 7, 110, '2023-01-07'),
(8, 8, 160, '2023-01-08'),
(9, 9, 170, '2023-01-09'),
(10, 10, 180, '2023-01-10'),
(11, 11, 190, '2023-01-11'),
(12, 12, 210, '2023-01-12'),
(13, 13, 220, '2023-01-13'),
(14, 14, 230, '2023-01-14'),
(15, 15, 240, '2023-01-15'),
(16, 16, 250, '2023-01-16'),
(17, 17, 260, '2023-01-17'),
(18, 18, 270, '2023-01-18'),
(19, 19, 280, '2023-01-19'),
(20, 20, 290, '2023-01-20'),
(21, 21, 300, '2023-01-21'),
(22, 22, 310, '2023-01-22'),
(23, 23, 320, '2023-01-23'),
(24, 24, 330, '2023-01-24'),
(25, 25, 340, '2023-01-25');


----WILDLIFE_HABITAT
INSERT INTO WILDLIFE_HABITAT (WildlifeHabitat_Id, Wildlife_Id, Habitat_Id, Date_of_Localisation) VALUES
(1, 1, 1, '2023-01-01'),
(2, 2, 2, '2023-01-02'),
(3, 3, 3, '2023-01-03'),
(4, 4, 4, '2023-01-04'),
(5, 5, 5, '2023-01-05'),
(6, 6, 6, '2023-01-06'),
(7, 7, 7, '2023-01-07'),
(8, 8, 8, '2023-01-08'),
(9, 9, 9, '2023-01-09'),
(10, 10, 10, '2023-01-10'),
(11, 11, 11, '2023-01-11'),
(12, 12, 12, '2023-01-12'),
(13, 13, 13, '2023-01-13'),
(14, 14, 14, '2023-01-14'),
(15, 15, 15, '2023-01-15'),
(16, 16, 16, '2023-01-16'),
(17, 17, 17, '2023-01-17'),
(18, 18, 18, '2023-01-18'),
(19, 19, 19, '2023-01-19'),
(20, 20, 20, '2023-01-20'),
(21, 21, 21, '2023-01-21'),
(22, 22, 22, '2023-01-22'),
(23, 23, 23, '2023-01-23'),
(24, 24, 24, '2023-01-24'),
(25, 25, 25, '2023-01-25');


