
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
    venv\Scripts\activate.bat
    ```
    - For ubuntu, 
    ```
    source venv/bin/activate
    ```

4. Now run the project. 
    ```
    python manage.py runserver 0.0.0.0:8000
    ```

5. To deactivate the virtual env,
    ```
    deactivate
    ```