#!/usr/bin/env python

import re
import socket
import shutil


shutil.copy('../../config/settings/settings_docker.py.example','../../backend/calipsoplus-backend/calipsoplus/settings_docker.py.example')

filename='../../backend/calipsoplus-backend/calipsoplus/settings_docker.py.example'
textfile = open(filename, 'r')
filetext = textfile.read()
textfile.close()
matches = re.findall("REMOTE_MACHINE_IP = \"[a-zA-Z0-9.]*\"", filetext)

old_value = matches[0]

matches = re.findall("[a-zA-Z0-9.]*", old_value)        
old_value = matches[9]

#get host/ip for docker daemon
question = "Enter IP where docker daemon lives: [%s] " % old_value 
while True:
    var_ip = input(question)
    if var_ip=='':
        var_ip=old_value
        break    
    try:
        socket.inet_aton(var_ip)
        break
    except socket.error:
        continue

   
# Read in the file
with open(filename, 'r') as file :
  filedata = file.read()

# Replace the target string
new_text = 'REMOTE_MACHINE_IP = "%s"' % var_ip 
old_text = 'REMOTE_MACHINE_IP = "%s"' % old_value 
new2_text = 'tcp://%s:2375' % var_ip 
old2_text = 'tcp://%s:2375' % old_value 

newdata  = filedata.replace(old_text,new_text)
filedata = newdata.replace(old2_text,new2_text)

# Write the file out again
with open(filename, 'w') as file:
  file.write(filedata)

shutil.copy('../../backend/calipsoplus-backend/calipsoplus/settings_docker.py.example', '../../config/settings/settings_docker.py.example')


############
filename='../../frontend/calipsoplus-frontend/angular.json'

# Read in the file
with open(filename, 'r') as file :
  filedata = file.read()

# Replace the target string
new_text = '"browserTarget": "calipsoplus-app:build:docker","disableHostCheck": true'
old_text = '"browserTarget": "calipsoplus-app:build:docker"\n'


newdata  = filedata.replace(old_text,new_text)

# Write the file out again
with open(filename, 'w') as file:
  file.write(newdata)
##########################


filename='../../frontend/calipsoplus-frontend/src/environments/environment.docker.ts.example'
textfile = open(filename, 'r')
filetext = textfile.read()
textfile.close()
matches = re.findall("facilityLogo: '[.A-Za-z0-9:/-]*'", filetext)

old_value = matches[0]

matches = re.findall("[a-zA-Z0-9.:/-]*", old_value)        
old_value = matches[3]


#get facility logo
question = "Enter the address of facility logo : [%s] " % old_value 

while True:
    var_logo = input(question)
    if var_logo=='':
        var_logo=old_value
        break 
    else:
       break


# Read in the file
with open(filename, 'r') as file :
  filedata = file.read()

# Replace the target string
new_text = "facilityLogo: '%s" % var_logo
old_text = "facilityLogo: '%s" % old_value

filedata  = filedata.replace(old_text,new_text)

# Write the file out again
with open(filename, 'w') as file:
  file.write(filedata)


filename='../../backend/calipsoplus-backend/calipsoplus/settings_calipso.py.example'

# Read in the file
with open(filename, 'r') as file :
  filedata = file.read()

# Replace the target string
new_text = "ALLOW_LOCAL_AUTHENTICATION = 0"
old_text = "ALLOW_LOCAL_AUTHENTICATION = 1"

filedata  = filedata.replace(old_text,new_text)

# Write the file out again
with open(filename, 'w') as file:
  file.write(filedata)



print ("done.")