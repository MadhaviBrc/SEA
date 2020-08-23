# SEA
Smart Education App

This Project was built in Django app.

1.Install Xampp to run the application on localhost and connect with mysql.(Keep the Apache and mysql running)



2.Install Python from python.org (version used here is python-3.8.3)



3.Using PIP (Python package manager) install the following in the root directory.

    pip install django djangorestframework django-rest-knox
    
    pip install django-cors-headers
    
    pip install mysqlclient

Backend folder is Django app,
Frontend folder is React app

From the path (django_react folder) give the following command to run the django app

python manage.py runserver

Starts the development server at http://127.0.0.1:8000/ (localhost:8000)

Within the Frontend app we have package.json file.


Run the following commands in frontend folder path


  npm install
  
  npm run dev (to run the react app)
  
urls:

http://localhost:8000/ (Homepage)

http://localhost:8000/users (users page - Add and list)

http://localhost:8000/useredit/1 (user edit page with id)

Api urls: 

localhost:8000/api/users/

localhost:8000/api/infrastructure/
