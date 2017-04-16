# Step 3 - Install docker
printf "\nChecking if docker installed\n"
{
    # check if docker installed
    which docker
} || {
    printf "\nDocker not present - installing docker\n"
    sudo apt-get -y install docker
    printf "\n Docker version:\n"
    docker version
    docker-compose version
}

usermod -aG docker $(whoami)
printf "\nChecking docker status\n"
service docker status

# Install Java JDK
# sudo apt-get -y install default-jdk
# java -version

# Install maven
sudo apt-get -y install maven
mvn -version

#Provision docker hub and nodes
docker-compose up
