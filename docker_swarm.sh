# inicando docker Swarm

sudo Docker Swarm init

#Delcar o IP com flag --advertise-addr

--advertise-addr IP

sudo docker swarm init --advertise-addr 184.72.85.254

# sudo docker swarm join --token SWMTKN-1-5fjcsctrk5fb6ut2hs55qpte1vqiyhn1t5z4vp6o2i1j00naw9-3ppry5jzoe99bwwg9vjx4nhga 184.72.85.254:2377

docker swarm join --token SWMTKN-1-4f2f83e585klkbpufsou3lt92tm7vfj72j63p5vmcw1rbymkvo-6bc7d4kj79hifif46mysnami8 184.72.85.254:2377 #adcionando o node no maneg

docker swarm join-toker manager #recuperar o tocken

docker info

docker node rm <ID>

docker ps #Listar container

docker rmi imagem  #imagem

docker image ls #listar imagens

docker stop imagen #parar imagem

sudo netstart -rn #listar serviços

sudo netstar -i #listar serviços

sudo  docker swarm leave -f

#docker service create --name nginxswarm -p 80:80 nginx
docker service create --name nginx1 --publish 80:80 nginx:1.12

docker service create --name nginx1 --replicas 3 --publish 80:80 nginx:1.12

docker service rm nome #deletar um serviço

docker servce ls

docker service inspect <ID>

docker service ps <id>

docker ps -a

sudo docker stack deploy -c docker-compose.yaml nginx #executando para subir em swarm 

sudo docker service scale nginx=3 #escalando swarm 

sudo docker node update --availability drain <id> #drain é que não recebe task e active elevolta ao nomal
sudo docker node update --availability active <id> #drain é que não recebe task e active elevolta ao nomal

sudo docker service update --image nginx:1.18.0 <ID> #atualizar versão 

docker network create --driver overlay swarm

docker network ls

docker service create --name nginx1 --replicas 3 --publish 80:80 --network swarm nginx:1.12

sudo docker node update --network-add swarm <ID>

sudo systemctl status nginx

yum install net-tools

sudo netstat -plnt

sudo docker node ls

sudo docker service ls




