# Step 3 - Install docker
printf "\nChecking if docker installed\n"
{
    # check if docker installed
    which docker
} || {
    printf "\nDocker not present - installing docker\n"
    sudo curl -sSL https://get.docker.com/ | sh
    printf "\n Docker version:\n"
    docker version
}
 
sudo usermod -aG docker $(whoami)
 
printf "\nChecking docker status\n"
sudo service docker status
