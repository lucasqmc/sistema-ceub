# README

 
Tabela de conteúdos
-----------
* Instalando aplicação localmente
    * [Pré-requisitos](#prerequisites)
    * [Clonando projeto localmente](#clone)
    * [Instalando depêndencias](#install)
* Documentação


<a href="prerequisites">Pré-requisitos</a>
-----------
`docker`
`docker-compose`

Link para documentação oficial de instalação de docker e docker-compose:
https://docs.docker.com/compose/install/

<a href="clone">Clonando projeto localmente</a>
-----------

    git clone git@github.com:lucasqmc/sistema-ceub.git
    cd sistema-ceub

<a href="install">Instalando depêndencias</a>
-----------

Para baixar as imagens e preparar os containers execute o comando:

`docker-compose build --no-cache`

Após a execução, iremos utilizar o seguinte comando para iniciar os containers:

`docker-compose up` ou

`docker-compose up -d` caso queira executar de forma detach (background)

Em seguida executaremos o seguinte comando para criar e popular a base de dados:

`docker exec sistema-ceub sh ./init.sh`

Após isso basta acessar no seu navegador:

`http://localhost:3000/`

Para acessar o container:

`docker exec -ti sistema-ceub bash`



