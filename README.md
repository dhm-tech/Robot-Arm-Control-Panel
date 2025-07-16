# 🤖 Robot Arm Control Panel

A web-based interface for controlling a 6-motor robot arm.  
Users can adjust motor angles with sliders, **save** and **load** poses, and simulate a **run command**.  
Built using PHP, MySQL, HTML, CSS, and JavaScript with a clean folder structure.

---

## 🎯 Project Goal

Learn how to:
- Create a responsive frontend with HTML sliders
- Connect PHP backend with MySQL database
- Use fetch API to handle pose saving and loading dynamically
- Organize a full-stack project with clear folder separation
- Simulate robot commands using stored motor data

---

## 🧱 What We Did

The project is structured in 3 main parts:

- `public/` → Frontend (HTML, CSS, JS)  
- `backend/` → PHP backend (DB access, API endpoints)  
- `sql/` → SQL file to create the `poses` table

Features:
- Slider input for 6 motors
- Save and load motor poses
- Reset to default (90°)
- Remove stored poses
- Simulated run command (expandable to Arduino later)

---

## 🛠️ Tools & Technologies

- ⚙️ PHP 8+  
- 🧩 MySQL  
- 🧠 JavaScript (vanilla + fetch API)  
- 🎨 HTML5 & CSS3  
- 🖥️ XAMPP (Apache + MySQL)  
- 💻 VS Code

---

## 🧪 How It Works

1. User adjusts 6 sliders to define motor positions (0–180°)
2. Click "Save Pose" → data saved to `poses` table
3. All saved poses appear in a table below
4. "Load" button fills sliders with previous pose values
5. "Remove" deletes a pose
6. "Run" simulates executing the current pose

---

## 🗃️ Database Schema (`sql/poses.sql`)

```sql
CREATE TABLE poses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  motor1 INT,
  motor2 INT,
  motor3 INT,
  motor4 INT,
  motor5 INT,
  motor6 INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
---

## 🚀 How to Run the Project Locally

1. Install XAMPP
2. Start Apache and MySQL
3. Open http://localhost/phpmyadmin
4. Create a new database: robot_arm_control
5. Import the file from: sql/poses.sql
6. Copy the entire project folder into: C:\\xampp\\htdocs\\robot-arm-controller
7. Open your browser and navigate to:
http://localhost/robot-arm-controller/public/index.html

---

## 📸 Project Preview

https://github.com/user-attachments/assets/7c09753b-782e-4afc-8d8a-f0b114bc4132

---

## 👤 Author
> Designed by: [Abdulrahman Qutah]  
> Date: [16 Jul 2025]
