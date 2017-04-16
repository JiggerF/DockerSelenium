# Step 3 - Install docker
printf "\nChecking if docker installed\n"
{
    # check if docker installed
    which docker
} || {
    printf "\nDocker not present - installing docker\n"
    curl -sSL https://get.docker.com/ | sh
    printf "\n Docker version:\n"
    docker version
}
 
usermod -aG docker $(whoami)
 
printf "\nChecking docker status\n"
service docker status
