#!/bin/bash
# Navigate to app directory
cd /var/www/html/flask-app
# Start the application with gunicorn
pkill gunicorn || true
nohup gunicorn -b 0.0.0.0:5000 app:app > /var/log/flask-app.log 2>&1 &