# docker-gatk4-galaxy
Honestly tired of Galaxy not having GATK4 tools, so I am trying to build a docker integration that will allow it to work. 
Please be warned. This script is not working yet and requires building a custom docker image. More options will be added to the tool once I get the basics working. 

# Current progress: 
I am able to successfully launch the GATK4 docker container from Galaxy and pass commands and files to it, but GATK4 is not able to recognize the reference files provided. I am not sure if the issue is the index/reference, or if it is something else. 

![alt text](https://github.com/antomicblitz/docker-gatk4-galaxy/blob/main/Screenshot%202023-04-23%20at%2008.34.22.png?raw=true)
