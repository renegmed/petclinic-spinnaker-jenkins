
# keys:
# 	ssh-keygen -f mykey
	
init:
	terraform init 

plan:
	terraform plan -out eks-jenkins.tfplan 

apply:
	time terraform apply "eks-jenkins.tfplan"

destroy:
	terraform destroy -auto-approve
	rm -rf .terraform 
	rm eks-jenkins.tfplan 
	rm terraform.tfstate
	rm terraform.tfstate.backup
