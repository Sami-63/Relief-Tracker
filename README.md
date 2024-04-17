# RELIEF-TRACKER

This project consists of both frontend and backend components aimed at providing.

## Backend Setup

### Prerequisites

- Python 3.10.x
- Pip
- Virtual Environment (Optional but recommended)

### Steps to Setup Backend

1. Install `venv` if not already installed. (Only for Ubuntu)
    ```bash
    sudo apt install python3.10-venv
    ```

2. Clone this repository and navigate to the backend directory.
    ```bash
    cd backend
    ```

3. Create a virtual environment.
    ```bash
    python -m venv venv
    ```

4. Activate the virtual environment:
    - For Windows:
    ```bash
    venv\Scripts\activate
    ```
    - For Ubuntu or other Unix-based systems:
    ```bash
    source venv/bin/activate
    ```

5. Install the required Python packages.
    ```bash
    pip install -r requirements.txt
    ```

6. Migrate the database.
    ```bash
    python manage.py migrate
    ```

7. Create a superuser for accessing the admin panel.
    ```bash
    python manage.py createsuperuser
    ```
    Follow the prompts to set up the superuser account.

8. Start the backend server.
    ```bash
    python manage.py runserver
    ```

9. To deactivate the virtual environment, simply run:
    ```bash
    deactivate
    ```
## Frontend Setup

### Prerequisites

- Flutter SDK
- Android Studio / Xcode (for mobile app development)
- Visual Studio Code / Android Studio IDE (optional but recommended)

### Steps to Setup Frontend

1. Navigate to the `app` directory in the project root.
    ```bash
    cd app
    ```

2. Install dependencies using flutter.
    ```bash
    flutter pub get
    ```

3. After installation is complete, start the frontend server.
    ```bash
    flutter run
    ```

4. Your Flutter app should now be running on your device or emulator.

## Configuration

### Retrieving IP Address

To configure your Flutter frontend to communicate with the backend, you'll need to retrieve the IP address of your machine. Follow these steps:

#### For Windows:

1. Open Command Prompt.

2. Run the following command to retrieve your IPv4 address:
    ```bash
    ipconfig /all
    ```

   Look for the "IPv4 Address" under your active network adapter. Note down this address.

#### For macOS / Linux:

1. Open Terminal.

2. Run the following command to retrieve your IPv4 address:
    ```bash
    ifconfig
    ```
   or
    ```bash
    ip addr
    ```

   Look for the "inet" or "inet addr" field under your active network adapter. Note down this address.

### Configuring Flutter App

Once you have the IPv4 address, you can configure your Flutter app to use it as the base URL for communicating with the backend. Follow these steps:

1. Open your Flutter project in your preferred code editor.

2. Navigate to the file where you make HTTP requests to your backend (e.g., `api_service.dart`).

3. Replace the base URL with the retrieved IPv4 address and appropriate port number.

   Example:
   ```dart
   String baseURL = 'http://your-ipv4-address:8000'; // Replace 'your-ipv4-address' with your actual IPv4 address
   ```

4. Save the file and rebuild your Flutter app.

Now, your Flutter frontend should be able to communicate with the backend using the configured IP address. Make sure your backend server is running and accessible from your network.
