popd django
python3 -m venv .
.\Scripts\activate
pip3 install -r requirements.txt
.\manage.py makemigrations
.\manage.py migrate
pushd