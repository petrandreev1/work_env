FROM ubuntu:20.04
RUN apt-get update 
# getting python
RUN apt install -y python3-pip
# getting dbt 
RUN pip install dbt-core
# setting up terraform 
RUN apt-get update && apt-get install -y gnupg
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y software-properties-common 
RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update &&  apt-get install terraform
# getting meltano
RUN pip install meltano 
# getting git 
RUN apt-get update && apt-get install -y git 
RUN cd ../usr && mkdir work_env && cd work_env
