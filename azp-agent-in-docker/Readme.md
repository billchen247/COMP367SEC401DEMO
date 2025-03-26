follow this doc https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops
you can build the docker image to run azure devops agent in Docker Container.
run those cli:

./build_docker_image.sh
then modify and replace your own agent pool name and token, then run this cli:
./start_agent_in_docker.sh
