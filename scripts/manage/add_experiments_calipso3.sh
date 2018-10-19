echo "adding some experiments"
python manage.py add_experiment --public_number=20180301 --title="test 1 C" --description="this is a description1" --beamline_code=BL13
python manage.py add_experiment --public_number=20180302 --title="test 2 C" --description="this is a description2" --beamline_code=BL13
python manage.py add_experiment --public_number=20180303 --title="test 3 C" --description="this is a description3" --beamline_code=BL13
python manage.py add_experiment --public_number=20180304 --title="test 4 C" --description="this is a description4" --beamline_code=BL13
python manage.py add_experiment --public_number=20180305 --title="test 5 C" --description="this is a description5" --beamline_code=BL13
python manage.py add_experiment --public_number=20180306 --title="test 6 C" --description="this is a description6" --beamline_code=BL13
python manage.py add_experiment --public_number=20180307 --title="test 7 C" --description="this is a description7" --beamline_code=BL13
python manage.py add_experiment --public_number=20180308 --title="test 8 C" --description="this is a description8" --beamline_code=BL13
python manage.py add_experiment --public_number=20180309 --title="test 9 C" --description="this is a description9" --beamline_code=BL13
python manage.py add_experiment --public_number=20180310 --title="test 10 C" --description="this is a description10" --beamline_code=BL13


echo "adding experiments for calipso3"
python manage.py add_user --userlogin=calipso3 --public_number=20180301
python manage.py add_user --userlogin=calipso3 --public_number=20180302
python manage.py add_user --userlogin=calipso3 --public_number=20180303
python manage.py add_user --userlogin=calipso3 --public_number=20180304
python manage.py add_user --userlogin=calipso3 --public_number=20180305
python manage.py add_user --userlogin=calipso3 --public_number=20180306
python manage.py add_user --userlogin=calipso3 --public_number=20180307
python manage.py add_user --userlogin=calipso3 --public_number=20180308
python manage.py add_user --userlogin=calipso3 --public_number=20180309
python manage.py add_user --userlogin=calipso3 --public_number=20180310
