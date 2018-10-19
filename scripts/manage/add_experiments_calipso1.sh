echo "adding some experiments"
python manage.py add_experiment --public_number=20180101 --title="test 1_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180102 --title="test 2_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180103 --title="test 3_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180104 --title="test 4_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180105 --title="test 5_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180106 --title="test 6_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180107 --title="test 7_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180108 --title="test 8_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180109 --title="test 9_D" --description="this is a description" --beamline_code=BL11
python manage.py add_experiment --public_number=20180110 --title="test 10_D" --description="this is a description" --beamline_code=BL11


echo "adding experiments for calipso1"
python manage.py add_user --userlogin=calipso1 --public_number=20180101
python manage.py add_user --userlogin=calipso1 --public_number=20180102
python manage.py add_user --userlogin=calipso1 --public_number=20180103
python manage.py add_user --userlogin=calipso1 --public_number=20180104
python manage.py add_user --userlogin=calipso1 --public_number=20180105
python manage.py add_user --userlogin=calipso1 --public_number=20180106
python manage.py add_user --userlogin=calipso1 --public_number=20180107
python manage.py add_user --userlogin=calipso1 --public_number=20180108
python manage.py add_user --userlogin=calipso1 --public_number=20180109
python manage.py add_user --userlogin=calipso1 --public_number=20180110
