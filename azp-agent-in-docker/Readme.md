follow this doc https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops
you can build the docker image to run azure devops agent in Docker Container.
run those cli:

./build_docker_image.sh

then modify and replace your own agent pool name and token, then run this cli:

./start_agent_in_docker.sh


*** if you want to run docker in Macbook with M Chips *** 
Oracle XE on Apple M chips
Currently, there is no Oracle Database port for ARM chips, hence Oracle XE images cannot run on the new Apple M chips via Docker Desktop.
Fortunately, there are other technologies that can spin up x86_64 software on Apple M chips, such as colima⁠. To run these Oracle XE images on Apple M hardware, follow these simple steps:

Install colima (instructions⁠)
Run colima start --arch x86_64 --memory 4
Start container as usual
