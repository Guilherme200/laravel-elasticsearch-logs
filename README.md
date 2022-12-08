# README #

Esta é a base de projetos Laravel com envio de logs para o Elasticsearch e monitamento com Kibana.

## Utilizando o projeto pelo docker

Em primeiro lugar é necessário ter o docker e o docker-compose instalados em sua máquina, para isso segue o tutorial:

* [Tutorial de instalação do docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* [Tutorial de instalação do docker-compose](https://docs.docker.com/compose/install/)

Para iniciar o projeto pela **primeira vez**, basta rodar os comandos abaixo:

```bash
$> ./laravel-docker start
$> ./setup.sh
```

Uma vez configurado, você não precisará mais rodar o script `setup.sh`.
Em vez disso, você precisará se preocupar apenas em subir e derrubar o ambiente:

#### Subir o ambiente
```
$> ./laravel-docker start
```

#### Derrubar o ambiente
```
$> ./laravel-docker stop
```

#### Limpar o ambiente
Este comando irá derrubar o ambiente, limpar os container órfãos e derrubar a rede interna do ambiente de desenvolvimento.
```
$> ./laravel-docker clean
```
## Containers ##
```
$> http:localhost => Aplicação
$> http:localhost:9200 => Elasticsearch
$> http:localhost:5601 => Kibana
```
Para aprender a configurar o projeto ná própria máquina, leia o documento [Setup Baremetal](docs/setup-baremetal.md)

## LICENÇA
Licença MIT (MIT). Por favor, leia o [Arquivo de Licença](LICENSE) para mais informações.