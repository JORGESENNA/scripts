#***Instalando Docker na AWS***

#1-atualizar pacotes aws

sudo yum update -y

#2-Instalando docker na aws

sudo yum install docker

#3-Inciar o serviço docker na aws

sudo service docker start

#4- Verificando instancia do Docker

Sudo Docker ps

#5- Permissão desse usuario para o docker usuario ec2-user

sudo usermod -a -G docker ec2-user

#6-Iniciando o docker swarm

sudo docker swarm init

#7-saindo do docker swarm

sudo docker swarm leave -f

#docker info

sudo docker info

# docker swarm join --token 

#Listando todos os nodes
sudo docker node ls

#addcionando os dodes, pega pp Join com token e inseir no nodes
sudo swarm join --token ****** IP:PORTA
