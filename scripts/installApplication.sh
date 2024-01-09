cd /home/ubuntu/new_chatapp/
virtualenv -p /usr/bin/python3 venv
source venv/bin/activate

pip3 install -r requirements.txt
cd /home/ubuntu/new_chatapp/fundoo
sudo apt-get install python3-dev default-libmysqlclient-dev build-essential
pip3 install mysqlclient
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000
gunicorn --bind 0.0.0.0:8000 fundoo.wsgi:application	

