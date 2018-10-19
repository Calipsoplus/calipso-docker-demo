echo "adding some experiments"
python manage.py add_experiment --public_number=20180201 --title="test 1_A" --description="this is a description 1" --beamline_code=BL12
python manage.py add_experiment --public_number=20180202 --title="test 2_A" --description="this is a description 2" --beamline_code=BL12
python manage.py add_experiment --public_number=20180203 --title="test 3_A" --description="this is a description 3" --beamline_code=BL12
python manage.py add_experiment --public_number=20180204 --title="test 4_A" --description="this is a description 4" --beamline_code=BL12
python manage.py add_experiment --public_number=20180205 --title="test 5_A" --description="this is a description 5" --beamline_code=BL12
python manage.py add_experiment --public_number=20180206 --title="test 6_A" --description="this is a description 6" --beamline_code=BL12
python manage.py add_experiment --public_number=20180207 --title="test 7_A" --description="this is a description 7" --beamline_code=BL12
python manage.py add_experiment --public_number=20180208 --title="test 8_A" --description="this is a description 8" --beamline_code=BL12
python manage.py add_experiment --public_number=20180209 --title="test 9_A" --description="this is a description 9" --beamline_code=BL12
python manage.py add_experiment --public_number=20180210 --title="test 10_A" --description="this is a description 10" --beamline_code=BL12


echo "adding experiments for calipso2"
python manage.py add_user --userlogin=calipso2 --public_number=20180201
python manage.py add_user --userlogin=calipso2 --public_number=20180202
python manage.py add_user --userlogin=calipso2 --public_number=20180203
python manage.py add_user --userlogin=calipso2 --public_number=20180204
python manage.py add_user --userlogin=calipso2 --public_number=20180205
python manage.py add_user --userlogin=calipso2 --public_number=20180206
python manage.py add_user --userlogin=calipso2 --public_number=20180207
python manage.py add_user --userlogin=calipso2 --public_number=20180208
python manage.py add_user --userlogin=calipso2 --public_number=20180209
python manage.py add_user --userlogin=calipso2 --public_number=20180210
