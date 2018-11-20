echo "adding some experiments"
python manage.py add_experiment --public_number=20180101 --title="test 1_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180102 --title="test 2_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180103 --title="test 3_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180104 --title="test 4_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180105 --title="test 5_D" --description="this is a description" --beamline_code=BL11


echo "adding experiments for calipso1"
python manage.py add_user --userlogin=calipso1 --public_number=20180101
python manage.py add_user --userlogin=calipso1 --public_number=20180102
python manage.py add_user --userlogin=calipso1 --public_number=20180103
python manage.py add_user --userlogin=calipso1 --public_number=20180104
python manage.py add_user --userlogin=calipso1 --public_number=20180105

echo "adding sessions"
python manage.py add_session_csv --path /src/sessions_demo.csv

