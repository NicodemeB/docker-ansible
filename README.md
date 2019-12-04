# docker-ansible

## Build 

````bash
docker build -t ansible:debian9 .
````
## Run

````bash

docker run --name ansible --rm -v ${PWD}:/ansible -v ~/.ssh/:/root/.ssh/ \
	-it ansible:debian9 ansible-playbook \
	-i <YOUR_INVENTORY>  <YOUR_HOST_ON_INVENTORY> -m ping \
	--forks 1

````
