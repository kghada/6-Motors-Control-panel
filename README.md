# 6-Motor Control Panel

This project provides a web-based control panel for managing a robotic arm equipped with six motors. Through this control panel, users can specify the precise angles at which each motor should be positioned, allowing for fine-grained control of the robotic arm's movements.

## Repository Contents

- `index.html`: The main web page interface for the control panel. This file contains the HTML structure and forms that users interact with to input their desired motor angles.
- `main.css`: The stylesheet for styling the control panel interface. It ensures that the control panel is visually appealing and user-friendly.
- `main.php`: The primary PHP script that handles user inputs, processes the data, and communicates with the backend to execute the motor commands.
- `Records.php`: A PHP script that manages and displays records of past movements. It allows users to review the history of the robotic arm's operations.
- `Rangevalues.sql`: An SQL script used to create and populate the database table for storing the range values of the robotic arm's angles. This database integration is crucial for maintaining and retrieving movement records.

## Features

- **User Input**: Users can easily choose the desired angles for each of the six motors.
- **Control Panel**: The web-based interface is designed for controlling and monitoring of the robotic arm.
- **Database Integration**: The system stores and retrieves angle values in a database, facilitating efficient management of movement commands.
- **Record Keeping**: The control panel maintains a log of past movements, allowing users to review and analyze the robotic arm's activity.

## Getting Started

### Prerequisites

To run this project, ensure you have the following software installed:

- A web server (e.g., Apache, Nginx)
- PHP (v7.4 or later recommended)
- MySQL or a compatible database system

### Installation

1. **Clone the repository:**

   ```sh
   git clone https://github.com/yourusername/robotic-arm-control-panel.git
