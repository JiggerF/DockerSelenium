# Step 3 - Install docker
printf "\nChecking if docker installed\n"
{
    # check if docker installed
    which docker
} || {
    printf "\nDocker not present - installing docker\n"
    sudo apt-get install docker
    printf "\n Docker version:\n"
    docker version
    docker-compose version
}


usermod -aG docker $(whoami)
 
printf "\nChecking docker status\n"
service docker status
docker-compose up
