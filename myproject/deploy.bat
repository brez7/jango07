@echo off

:: Define the virtual environment directory
set VENV_DIR=myenv

:: Activate the virtual environment if it exists
if exist %VENV_DIR%\Scripts\activate (
    echo Activating virtual environment...
    call %VENV_DIR%\Scripts\activate
) else (
    echo Virtual environment not found. Ensure you have created it and installed the necessary dependencies.
    exit /b 1
)

:: Collect static files
echo Collecting static files...
python manage.py collectstatic --noinput

:: Deploy to Google App Engine
echo Deploying to Google App Engine...
gcloud app deploy

:: Deactivate the virtual environment
deactivate

echo Deployment completed.
