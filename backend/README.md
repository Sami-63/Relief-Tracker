
## Follow the instructions to get started

1. Install venv for python, only for ubuntu, 
    ```
    sudo apt install python3.10-venv
    ```

2. Create a virtual environment. Project was created with `Python 3.10.12`. For any kind of complication create virtual enviroment with following version. 
    ```
    python -m venv venv
    ```

3. Activate the enviroment. 
    - For windows, 
    ```
    venv/bin/activate.bat
    ```
    - For ubuntu, 
    ```
    source venv/bin/activate
    ```

4. Now install the packages. 
    ```
    pip install -r requirements.txt
    ```

5. Migrate database. 
    ```
    python manage.py migrate
    ```

6. Create a superuser 
    ```
    python manage.py createsuperuser
    Username: admin
    Email address: 
    Password: 1234
    Password (again): 1234
    Bypass password validation and create user anyway? [y/N]: y
    Superuser created successfully.
    ```

7. Now run the project. 
    ```
    python manage.py runserver
    ```

8. To deactivate the virtual env,
    ```
    deactivate
    ```