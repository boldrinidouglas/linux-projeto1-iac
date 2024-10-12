#!/bin/bash

echo "Início do script"

echo "Criando diretórios.."

mkdir -m 777 /publico
mkdir -m 770 /adm
mkdir -m 770 /ven
mkdir -m 770 /sec

echo "Criando grupos.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Atribuindo dono e grupo aos diretórios.."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando Usuários e atribuindo a grupos"

useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_ADM
useradd maria -m -c "Maria da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_ADM
useradd joao -m -c "João da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_ADM

useradd debora -m -c "Debora da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_VEN
useradd sebastiana -m -c "Sebastiana da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_VEN
useradd roberto -m -c "Roberto da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_VEN

useradd josefina -m -c "Josefina da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)"  -G GRP_SEC
useradd amanda -m -c "Amanda da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_SEC
useradd rogerio -m -c "Rogerio da Silva" -s /bin/bash -p $"(openssl passwd -crypt senha123)" -G GRP_SEC
