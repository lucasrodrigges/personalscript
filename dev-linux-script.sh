sudo apt-get update
#sudo apt-get install python3 python3-venv python3-pip

##Git
sudo apt install git -y

##Docker
sudo apt-get remove docker* containerd runc -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

## MYSQL
sudo apt install mysql-server -y

wget -c https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb

sudo apt install *.deb
