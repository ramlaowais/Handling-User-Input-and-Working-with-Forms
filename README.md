# Handling-User-Input-and-Working-with-Forms

## Overview

This Flutter project is developed for **Handling User Input and Working with Forms**. The focuses on form creation, input handling, validation, and navigation between screens.

## Features

### 🔸 Splash Screen
- Displays a logo centered on the screen.
- Logo flashes using animation for **2 seconds**.
- Navigates automatically to the **registration screen**.

### 🔸 Registration Screen
- Contains a **user registration form** with the following fields:
  - Username
  - Email
  - Password
  - Confirm Password
- A **Register** button at the bottom.
- Validates all fields (all are required, passwords must match).
- On successful validation, navigates to the **login screen**.

### 🔸 Login Screen
- Contains a **login form** with the following fields:
  - Username or Email
  - Password
- A **Login** button at the bottom.
- Validates credentials:
  - If credentials are correct → displays **"Login Successful"**.
  - If credentials are incorrect → displays **"Login Failed"**.

## Tools Used

- Flutter SDK
- Dart
- Visual Studio Code (VS Code)


## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter-user-form-lab10.git
