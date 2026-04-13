#!/bin/bash


code_clone(){
       	echo "Cloning the django app"
       	git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirements(){
       	echo "Install dependencies"
       	sudo apt-get install -y docker.io nginx docker-compose
}

required_restarts(){
       	sudo chown $USER /var/run/docker.sock
       	sudo systemctl enable docker
       	sudo systemctl enable nginx
       	#sudo systemctl restart docker
	
}

deploy(){
       	docker build -t notes-app .
       	#docker run -d -p 8000:8000 notes-app:latest
	docker-compose up -d
 }


 echo "***** Deplyement Started *****"
 if ! code_clone; then
	 echo "Cloning repository already exist"
	 cd django-notes-app || exit 1
 fi

 if ! install_requirements; then
	 echo "Error in install dependencies"
	 exit 1
 fi

 if ! required_restarts; then
	 echo "System fault identified"
	 exit 1
 fi
 if ! deploy; then
	 echo "Deployment failed, mailing the admin"
	 #sendmail 
	 exit 1
 fi


