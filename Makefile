build:
	sudo docker build --tag renegmedal/petclinic-spinnaker-jenkins .

push:
	sudo docker push renegmedal/petclinic-spinnaker-jenkins:latest

