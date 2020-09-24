build:
	docker build --tag renegmedal/petclinic-spinnaker-jenkins .

push:
	docker push renegmedal/petclinic-spinnaker-jenkins:latest

