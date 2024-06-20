#!/bin/bash
# Activate the virtual environment
source myenv/bin/activate

# Run collectstatic to gather static files
python manage.py collectstatic --noinput

# Deploy to Google App Engine
gcloud app deploy