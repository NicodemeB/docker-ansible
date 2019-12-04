# docker-ansible

## Build 

````bash
docker build -t ansible:debian9 .
````
## Run

````bash

docker run --rm -v ${PWD}:/ansible -v ~/.ssh/:/root/.ssh/ -it ansible:debian9 ansible-playbook -i /ansible/<YOUR_INVENTORY>  /ansible/<YOUR_PLAY_BOOK> --forks 1

````
