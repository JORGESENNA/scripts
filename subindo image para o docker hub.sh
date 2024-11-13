#1- Primeiramente tem que renomear para tag atual.

docker tag php7_apache_mssql__php  jsenna84/php8_apache_mssql__php:1.0
docker tag       imagem origem       logindockerhub/nome_tag_:versão

#2- Listar imagens

docker images ls

#3-logar no docker hub

docker login -u login
docker login -u "login" -p "senha" docker.io

#4-criar  repositorio no docker hub

#5- push subir para repositorio
docker push jsenna84/php8_apache_mssql:1.0
