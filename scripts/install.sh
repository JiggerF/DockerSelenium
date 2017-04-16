# Step 3 - Install docker
printf "\nChecking if docker installed\n"
{
    # check if docker installed
    which docker
} || {
    printf "\nDocker not present - installing docker\n"
    sudo apt-get install docker-ce
    printf "\n Docker version:\n"
    docker version
}

printf "\nChecking if docker-compose installed\n"
{
    # check if docker-compose installed
    which docker-compose
} || {
    printf "\nDocker-compose not present - installing docker-compose\n"
    sudo apt-get install docker-compose
    printf "\n Docker-compose version:\n"
    docker version
}

usermod -aG docker $(whoami)
 
printf "\nChecking docker status\n"
service docker status
docker-compose up
