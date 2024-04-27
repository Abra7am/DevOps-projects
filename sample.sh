#!/bin/bash
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

# Update and install necessary packages
yum update -y
yum install -y python3 git
yum install python3-pip -y

# Install Python packages
pip3 install flask==2.2.* Werkzeug==2.2.* Flask-MySQL==1.5.* PyMySQL==1.1.*


touch /home/ec2-user/dbserver.endpoint
chmod 777 /home/ec2-user/dbserver.endpoint
echo "${MyDBURI}" > /home/ec2-user/dbserver.endpoint

# Clone the repository
TOKEN='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' # Replace this with a secure method to retrieve the token
git clone https://$TOKEN@github.com/Abra7am/cloud-test.git /home/ec2-user/cloud-test


# Change owner of the cloned directory to ec2-user
chown -R ec2-user:ec2-user /home/ec2-user/cloud-test

# Run the application as ec2-user
sudo -u ec2-user python3 /home/ec2-user/cloud-test/phonebook-app.py







Yes, changing the owner of the cloned directory to `ec2-user` can be necessary, especially in scenarios involving AWS EC2 instances and user data scripts, depending on what the script does and how it's configured. Here’s why:

1. **Default Execution User**: User data scripts are executed as the `root` user when an EC2 instance boots up. This means that any files or directories created during the execution of these scripts will by default be owned by `root`.

2. **Permissions Issues**: If a script or application needs to be run as a non-root user, such as `ec2-user` (which is common for many applications for security reasons), that user must have the appropriate permissions to access and modify the files and directories created by the user data script. This includes reading configuration files, writing logs, and modifying files necessary for the application's operation.

3. **Safety and Best Practices**: Running applications as a non-root user is a standard security practice. It limits the potential damage that can occur if the application is compromised. If an application running as `root` is compromised, the attacker could gain complete control over the entire system. Running it as a non-privileged user limits the scope of what can be affected.

In your case, if the `cloud-test` directory and its contents are created by the user data script (executed as root), then attempting to run scripts or access files in that directory as `ec2-user` might result in permission errors if ownership isn’t correctly set. The `chown -R ec2-user:ec2-user /home/ec2-user/cloud-test` command ensures that all files within that directory are owned by `ec2-user`, allowing proper access and manipulation of those files by that user.

Therefore, if your application or script running on the EC2 instance does not require root privileges and is intended to operate under `ec2-user`, this step is not just necessary but also a recommended security practice.














































#! /bin/bash
yum update -y
yum install python3 -y
yum install pip -y
yum install git -y
pip3 install flask==2.2.*
pip3 install Werkzeug==2.2.* 
pip3 install Flask-MySQL==1.5.*
pip3 install PyMySQL==1.1.*
TOKEN='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'
git clone https://$TOKEN@github.com/Abra7am/cloud-test.git
cd /home/ec2-user/ && touch dbserver.endpoint && chmod 640 dbserver.endpoint
cd /home/ec2-user/cloud-test/ && python3 phonebook-app.py


#!/bin/bash
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

# Update and install necessary packages
yum update -y
yum install -y python3 git
python3 -m pip install --upgrade pip

# Install Python packages
pip3 install flask==2.2.* Werkzeug==2.2.* Flask-MySQL==1.5.* PyMySQL==1.1.*

# Clone the repository
TOKEN='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' # Replace this with a secure method to retrieve the token
git clone https://$TOKEN@github.com/Abra7am/cloud-test.git /home/ec2-user/cloud-test

# Setup environment files
touch /home/ec2-user/dbserver.endpoint
chmod 640 /home/ec2-user/dbserver.endpoint

# Change owner of the cloned directory to ec2-user
chown -R ec2-user:ec2-user /home/ec2-user/cloud-test

# Run the application as ec2-user
sudo -u ec2-user python3 /home/ec2-user/cloud-test/phonebook-app.py





































cd /home/ec2-user/ && touch dbserver.endpoint && chmod 640 dbserver.endpoint
curl https://$TOKEN@raw.githubusercontent.com/Abra7am/cloud-test/main/phonebook-app.py
curl -s --create-dirs -o "/home/ec2-user/templates/index.html" -L "$FOLDER"/templates/index.html
curl -s --create-dirs -o "/home/ec2-user/templates/add-update.html" -L "$FOLDER"/templates/add-update.html
curl -s --create-dirs -o "/home/ec2-user/templates/delete.html" -L "$FOLDER"/templates/delete.html
curl -s --create-dirs -o "/home/ec2-user/app.py" -L "$FOLDER"/phonebook-app.py
alias sudopy="sudo ~/myprojectenv/bin/python3"
cd /home/ec2-user/cloud-test/ && sudopy phonebook-app.py



                  TOKEN='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'
                  git clone https://$TOKEN@github.com/Abra7am/cloud-test.git
                  python3 -m venv /home/ec2-user/myprojectenv
                  source /home/ec2-user/myprojectenv/bin/activate
                  echo "source /home/ec2-user/myprojectenv/bin/activate" >> /home/ec2-user/.bashrc
                  yum install python3.9 -y
                  pip3 install --upgrade pip
                  pip3 install flask==2.2.*
                  pip3 install Werkzeug==2.2.* 
                  pip3 install Flask-MySQL==1.5.*
                  pip3 install PyMySQL==1.1.*
                  cd /home/ec2-user/ && touch dbserver.endpoint && chmod 640 dbserver.endpoint
                  echo "${MyDBURI}" > /home/ec2-user/cloud-test/dbserver.endpoint 
                  alias sudopy="sudo ~/myprojectenv/bin/python3"
                  cd /home/ec2-user/cloud-test/ && sudopy phonebook-app.py