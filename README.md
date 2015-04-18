# install docker on your system first

wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu

# clone project

git clone https://github.com/xxxx/docker_yourprojectv2

cd docker_yourprojectv2

docker build -t="docker_yourprojectv2" .

# clone newest code

git checkout master

git pull origin master

git checkout develop

git pull origin develop

docker build -t="docker_yourprojectv2" .

