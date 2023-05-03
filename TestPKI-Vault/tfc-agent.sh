#!usr/bin/zsh
export TFC_AGENT_NAME=tfc-agent
docker pull --platform amd64 hashicorp/tfc-agent:latest

# Start Terraform Cloud Agent 
echo "\n\033[32m---STARTING THE TFC-AGENT CONTAINER---\033[0m"

if docker inspect "$TFC_AGENT_NAME" &> /dev/null; then
  echo "\033[33mContainer "$TFC_AGENT_NAME" already exists, skipping 'docker run' command.\033[0m"
else
  docker run -d --platform linux/amd64 --rm --name "$TFC_AGENT_NAME" --network host --cap-add=IPC_LOCK \
    -e "TFC_AGENT_TOKEN=${TFC_AGENT_TOKEN}" \
    -e "TFC_AGENT_NAME=${TFC_AGENT_NAME}" \
  hashicorp/tfc-agent:latest
fi