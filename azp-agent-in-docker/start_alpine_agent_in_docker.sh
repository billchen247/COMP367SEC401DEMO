docker run -d -e AZP_URL="https://dev.azure.com/hchen247devopsdemo" -e AZP_TOKEN="XXXX Replace by your own Azure Devops token XXX" -e AZP_POOL="COMP367-Docker" -e AZP_AGENT_NAME="DockerAgent-Linux" --name "azp-agent-linux" azp-agent:alpine
