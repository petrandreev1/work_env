# work_env
This work environment creates a docker container. You can attach to it using vsCode dev/remote containers. 

Container runs on ubuntu:20.04 and the following packages are included:
- python3, pip 
- git
- terraform
- dbt-core
- meltano 

To create the container image cd to the same directory where docker-compose.yml file is located and run `docker-compose up`.
When created, container will mount on the same directory where `docker-compose up` was run, so all the files and folders in the current directory will be visible from the container. 
