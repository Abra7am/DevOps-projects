#!/bin/bash
yum update -y
yum install python3.9 -y
yum install python3-pip -y
pip3 install flask==2.2.3
pip3 install Flask-MySQL==1.5.2
yum install git -y
cd /home/ec2-user
export TOKEN='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'
echo $TOKEN
git clone https://${TOKEN}@github.com/Abra7am/phonebook.git



touch dbserver.endpoint
nano dbserver.endpoint


#!python3.9
#!pip3
#!flask pip3 install flask==2.2.3
(Installing collected packages: zipp, MarkupSafe, Werkzeug, Jinja2, itsdangerous, importlib-metadata, click, flask
Successfully installed Jinja2-3.1.3 MarkupSafe-2.1.5 Werkzeug-3.0.2 click-8.1.7 flask-2.2.3 importlib-metadata-7.1.0 itsdangerous-2.2.0 zipp-3.18.1) #! has to be Werkzeug==2.2.2
#!Flask-MySQL==1.5.2
(Flask-MySQL-1.5.2 PyMySQL-1.1.0)





#!/bin/bash

# Update system and install necessary packages
yum update -y
yum install python3.9 -y
yum install python3-pip -y
yum install git -y

# Set up Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv
source /home/ec2-user/myprojectenv/bin/activate

# Install Python packages within the virtual environment
pip install flask==2.2.3
pip install Werkzeug==2.2.2  # or Werkzeug==2.2.3 as needed
!# Install specific version of Werkzeug or the next available minor version
pip install Werkzeug==2.2.*

pip install Flask-MySQL==1.5.2
pip install PyMySQL==1.1.0

# Clone the necessary Git repository using a secure method for handling your token
cd /home/ec2-user
export TOKEN='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'
echo $TOKEN
git clone https://${TOKEN}@github.com/Abra7am/phonebook.git
unset TOKEN  # Cleanup environment variable


######################################################################

#!/bin/bash

# Update system and install necessary packages
yum update -y
yum install python3.9 -y
yum install python3-pip -y
yum install git -y

# Set up Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv
source /home/ec2-user/myprojectenv/bin/activate

# Install Python packages within the virtual environment
pip install flask==2.2.3
pip install Werkzeug==2.2.2  # or Werkzeug==2.2.3 as needed
pip install Flask-MySQL==1.5.2
pip install PyMySQL==1.1.0

# Clone the necessary Git repository using a secure method for handling your token
cd /home/ec2-user
export TOKEN='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'
echo $TOKEN
git clone https://${TOKEN}@github.com/Abra7am/phonebook.git



# Deactivate the virtual environment
deactivate

# Instructions to activate virtual environment and run the application
echo "To run your Flask application, execute the following commands:"
echo "source /home/ec2-user/myprojectenv/bin/activate"
echo "python /home/ec2-user/phonebook/phonebook-app.py"



######################################################################


#!/bin/bash

# Update system and install necessary packages
yum update -y
yum install python3.9 -y
yum install python3-pip -y
yum install git -y

# Set up Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv
source /home/ec2-user/myprojectenv/bin/activate

# Optionally, download the requirements.txt from an external source
# aws s3 cp s3://yourbucket/requirements.txt /home/ec2-user/requirements.txt  # Uncomment and modify this line as needed

# Install Python packages within the virtual environment from a requirements file
pip install -r /home/ec2-user/requirements.txt

# Clone the necessary Git repository using a secure method for handling your token
cd /home/ec2-user
export TOKEN='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'
echo $TOKEN
git clone https://${TOKEN}@github.com/Abra7am/phonebook.git
unset TOKEN  # Cleanup environment variable


###################################################################

#!/bin/bash

# Update system and install necessary packages
yum update -y
yum install python3.9 -y
yum install python3-pip -y
yum install git -y

# Set up Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv

# Append environment activation command to .bashrc to ensure it activates on login
echo "source /home/ec2-user/myprojectenv/bin/activate" >> /home/ec2-user/.bashrc

# Activate the virtual environment
source /home/ec2-user/myprojectenv/bin/activate

# Install Python packages within the virtual environment from a requirements file
pip install flask==2.2.3
pip install Werkzeug==2.2.2  # or Werkzeug==2.2.3 as needed
pip install Flask-MySQL==1.5.2
pip install PyMySQL==1.1.0

# Clone the necessary Git repository using a secure method for handling your token
cd /home/ec2-user
export TOKEN='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'
echo $TOKEN
git clone https://${TOKEN}@github.com/Abra7am/phonebook.git


#!/bin/bash

# Step 1: Update system and install necessary packages
yum update -y
yum install python3.9 -y
yum install python3-pip -y
yum install git -y

# Step 2: Set up Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv

# Step 3: Append environment activation command to .bashrc and .bash_profile to ensure it activates on login
echo "source /home/ec2-user/myprojectenv/bin/activate" >> /home/ec2-user/.bashrc
echo "source /home/ec2-user/myprojectenv/bin/activate" >> /home/ec2-user/.bash_profile

# Step 4: Activate the virtual environment
source /home/ec2-user/myprojectenv/bin/activate

# Step 5: Clone the necessary Git repository
cd /home/ec2-user
export TOKEN='your_github_token_here'
git clone https://${TOKEN}@github.com/Abra7am/phonebook.git
unset TOKEN  # Cleanup environment variable

# Step 6: Install Python packages within the virtual environment from the requirements file located in the phonebook directory
pip install -r /home/ec2-user/phonebook/requirements.txt

# Optional Step 7: Run a Python script automatically (if needed)
# /home/ec2-user/myprojectenv/bin/python /home/ec2-user/phonebook/phonebook-app.py

# Note: No need to deactivate in user data; it remains active for the session
sudo -E 



the last version 


#!/bin/bash

# Step 1: Update system and install necessary packages
yum update -y
yum install python3.9 -y
yum install python3-pip -y
yum install git -y

# Step 2: Set up Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv

# Step 3: Append environment activation command to .bashrc to ensure it activates on login
echo "source /home/ec2-user/myprojectenv/bin/activate" >> /home/ec2-user/.bashrc

# Step 4: Activate the virtual environment
source /home/ec2-user/myprojectenv/bin/activate

# Step 5: Install Python packages within the virtual environment from the requirements file located in the phonebook directory
pip install -r /home/ec2-user/phonebook/requirements.txt

# Step 6: Clone the necessary Git repository
cd /home/ec2-user
# Consider securely passing the GitHub token using AWS Parameter Store or Secrets Manager
git clone https://github.com/Abra7am/phonebook.git

source /home/ec2-user/myprojectenv/bin/activate
python3 run my code !!!

# Optional Step 7: Run a Python script automatically (if needed)
# /home/ec2-user/myprojectenv/bin/python /home/ec2-user/phonebook/phonebook-app.py

# Note: No need to deactivate in user data; it remains active for the session




add

# touch dbserver.endpoint
# chmod 777 dbserver.endpoint
# echo #!amazonaws.com" > dbserver.endpoint
# python3 /home/ec2-user/phonebook/phonebook-app.py

#!/bin/bash

# Clone the Git repository
git clone <repository_url>

# Navigate to the "phonebook" folder
cd phonebook

# Create a file named dbserver.endpoint
touch dbserver.endpoint

# Obtain the RDS endpoint
RDS_ENDPOINT=$(aws rds describe-db-instances --query 'DBInstances[*].Endpoint.Address' --output text)

# Write the RDS endpoint to dbserver.endpoint
echo "$RDS_ENDPOINT" > dbserver.endpoint

echo "RDS endpoint written to dbserver.endpoint"




alternative to consider !!!  for CFN!!!!


#!/bin/bash

# Update system packages with sudo
sudo yum update -y

# Install Python3.9 and dependencies with sudo
sudo yum install python39 python39-venv -y

# Create Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv

# Append environment activation command to .bashrc with sudo
echo "source /home/ec2-user/myprojectenv/bin/activate" | sudo tee -a /home/ec2-user/.bashrc > /dev/null

# Activate the virtual environment
source /home/ec2-user/myprojectenv/bin/activate

# Install Python packages within the virtual environment from a requirements file
pip install flask==2.2.3
pip install Werkzeug==2.2.2  # or Werkzeug==2.2.3 as needed
pip install Flask-MySQL==1.5.2
pip install PyMySQL==1.1.0








# Write MyDBURI to dbserver.endpoint file
echo "${MyDBURI}" > /home/ec2-user/dbserver.endpoint

# Define the GitHub repository URL
REPO_URL="https://github.com/serdarcw/phonebook_app"

# Define the GitHub personal access token
TOKEN="XXXXXXXXXXXXXXXXXX"

# Define the base URL with token
BASE_URL="https://$TOKEN@raw.githubusercontent.com/$(echo $REPO_URL | cut -d'/' -f4-)/master"

# Download HTML templates and app.py from the repository
curl -s --create-dirs -o "/home/ec2-user/templates/index.html" -L "$BASE_URL/templates/index.html"
curl -s --create-dirs -o "/home/ec2-user/templates/add-update.html" -L "$BASE_URL/templates/add-update.html"
curl -s --create-dirs -o "/home/ec2-user/templates/delete.html" -L "$BASE_URL/templates/delete.html"
curl -s --create-dirs -o "/home/ec2-user/app.py" -L "$BASE_URL/phonebook-app.py"

# Activate the virtual environment again (in case sudo deactivated it)
source /home/ec2-user/myprojectenv/bin/activate

# Run the Python application
python /home/ec2-user/app.py
