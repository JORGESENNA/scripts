#--------Metedo 1---------------------------------------------------------
#https://www.edivaldobrito.com.br/tecnologia-docker-no-debian/

#Passo 1. Abra um terminal;
#Passo 2. Primeiramente, instale algumas dependências;

sudo apt install apt-transport-https  ca-certificates curl gnupg2 software-properties-common

#Passo 3. O próximo passo é adicionar a chave GPG oficial ao repositório. Isso garante que os pacotes baixados não sejam comprometidos;

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

#Passo 4. Usando este repositório, você pode instalar as versões de teste e nightly. No entanto, usaremos o canal estável para executar a instalação;

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian/ $(lsb_release -cs) stable"

#Passo 5. Agora que o repositório do Docker foi adicionado corretamente, poderemos atualizar o cache do APT.

sudo apt update

#Passo 6. Agora, para instalar o Docker, use o seguinte comando;

sudo apt install docker-ce docker-ce-cli containerd.io

#Passo 7. Em seguida, verifique se o serviço Docker foi iniciado corretamente com este comando;

sudo systemctl start docker

#Passo 8. E se você quiser que o Docker inicie na inicialização, execute o comando abaixo;

sudo systemctl enable docker

#Passo 9. Em seguida, verifique o status do serviço:

sudo systemctl status docker

#Passo 10. Se o serviço Docker está funcionando corretamente, execute o docker hello-world;

sudo docker run hello-world

#Pronto! O Docker está pronto para entrar e ação.


















--------Metedo 2---------------------------------------------------------

Seguindo a documentação 
https://docs.docker.com/engine/install/debian/

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

$(. /etc/os-release && echo "$VERSION_CODENAME")

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker ps
