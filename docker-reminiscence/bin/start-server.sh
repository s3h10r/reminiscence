#!/bin/bash -vx

# --- upgrade non vanilla pip-packages (youtube-dli, ...)
#     to latest version available 
$(dirname $0)/_update_pips.sh
# ---

while ! nc -w 1 -z db 5432; 
    do sleep 0.1; 
done; 
python manage.py migrate
python manage.py createdefaultsu
python manage.py collectstatic --no-input
if [ ! -d '/usr/src/reminiscence/static/nltk_data' ]
then
    echo 'wait..downloading..nltk_data' 
    python manage.py nltkdownload
fi
gunicorn --max-requests 1000 --worker-class gthread --workers 4 --thread 10 --timeout 300 --bind 0.0.0.0:8000 reminiscence.wsgi

