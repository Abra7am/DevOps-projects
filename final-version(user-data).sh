#Step 1: Update system and install necessary packages
#!/bin/bash
yum update -y
yum install python3.9 -y
yum install python3-pip -y
pip install --upgrade pip
yum install git -y

#Step 2: Python virtual environment
python3.9 -m venv /home/ec2-user/myprojectenv
#Activate the virtual environment
source /home/ec2-user/myprojectenv/bin/activate

#Step 3: Append environment activation command to .bashrc and .bash_profile to ensure it activates on login
echo "source /home/ec2-user/myprojectenv/bin/activate" >> /home/ec2-user/.bashrc
echo "source /home/ec2-user/myprojectenv/bin/activate" >> /home/ec2-user/.bash_profile


#optional for requirements file 
#!pip install -r /home/ec2-user/phonebook/requirements.txt

#Step 4: Install Python packages within the virtual environment from a requirements file
pip3 install flask==2.2.3
pip3 install Werkzeug==2.2.*  # or Werkzeug==2.2.3 as needed
pip3 install Flask-MySQL==1.5.2
pip3 install PyMySQL==1.1.0

#Step 5: Create Python requirements files
cd /home/ec2-user && pip3 freeze > requirements.txt

#Step 6: Clone the necessary Git repository using a secure method for handling your token
cd /home/ec2-user
export TOKEN='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'
echo $TOKEN
git clone https://${TOKEN}@github.com/Abra7am/phonebook.git

#optional
#!Project FOLDER!
cd /home/ec2-user/phonebook/ && touch dbserver.endpoint
cd /home/ec2-user/phonebook/ && chmod 777 dbserver.endpoint

#Step 7: Run your Python make sure sudo would not bypass your pyhton environment!
source /home/ec2-user/myprojectenv/bin/activate
alias sudopy="sudo ~/myprojectenv/bin/python3"

#!Project FOLDER!
cd /home/ec2-user/phonebook/ && sudopy phonebook-app.py


#optional for requirements file 
pip install -r /home/ec2-user/requirements.txt






#! PIPENV AND PYENV TOGETHER 
#!/bin/bash

# Define variables
GIT_REPO="https://github.com/yourusername/yourrepo.git"  # Replace this with your repository URL
FOLDER="phonebook"
TOKEN="XXXXX"  # Replace this with your actual token
PYTHON_VERSION="3.9.0"

# Instructions to user
echo "Ensure you replace GIT_REPO and TOKEN with actual values before running this script!"

# Install pyenv if not already installed
if ! command -v pyenv >/dev/null; then
    echo "Installing pyenv..."
    curl https://pyenv.run | bash
    echo -e 'export PATH="$HOME/.pyenv/bin:$PATH"\neval "$(pyenv init --path)"\neval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
    source ~/.bashrc
fi

# Install pipenv if not already installed
if ! command -v pipenv >/dev/null; then
    echo "Installing pipenv..."
    pip install --user pipenv
fi

# Clone the Git repository
git clone -b main --single-branch "${GIT_REPO}?private_token=${TOKEN}" $FOLDER
cd $FOLDER

# Install Python using pyenv and set it as local version
pyenv install $PYTHON_VERSION
pyenv local $PYTHON_VERSION

# Setup the virtual environment with pipenv and install dependencies
pipenv --python $PYTHON_VERSION
pipenv install flask==2.2.3 werkzeug==2.2.3 flask-mysql==1.5.2

# Get the Python path from the pipenv environment
PIPENV_PYTHON_PATH=$(pipenv --venv)/bin/python

# Activate the environment and run the app with sudo, if necessary
sudo $PIPENV_PYTHON_PATH app.py

























# Activate the virtual environment again (in case sudo deactivated it)
source /home/ec2-user/myprojectenv/bin/activate
cd /home/ec2-user/ && pip3 freeze > requirements.txt
mv /home/ec2-user/requirements.txt  /home/ec2-user/phonebook








1- after reboot terminal comes bash in environment,



# Run the Python application
python3 /home/ec2-user/phonebook/phonebook-app.py


sudo -E python3 /home/ec2-user/phonebook/phonebook-app.py!!!!