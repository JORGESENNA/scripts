#1-Instalar o o git com este comando
`apt-get install git`

#2-Entrar na pasta onde está instalado o git
`cd .ssh`
#![image](https://github.com/user-attachments/assets/1323a463-cacb-481f-9be7-745fd41f6d11)

#3-Gerar chave 
`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

#4-Vai pedir parametros só dar Nome da chave e senha e repetir senha

#![image](https://github.com/user-attachments/assets/a20d6f55-86df-4223-8098-0536b68e9e82)

#5-Tem que executar no git esse comando
`eval "$(ssh-agent -s)"`

#![image](https://github.com/user-attachments/assets/d7c6a95f-816f-48c8-891f-432915706365)

#6-add chave
`ssh-add id_rsa`

#![image](https://github.com/user-attachments/assets/6450f7f2-f347-4a11-a9a8-7da9894455e4)

#7- abrir chave e copiar e colar no github
#![image](https://github.com/user-attachments/assets/9d38f771-ba1b-47b3-ab44-2c44b1c1e885)
#![image](https://github.com/user-attachments/assets/79ae5630-7373-48ea-a795-66d285cbd50f)







