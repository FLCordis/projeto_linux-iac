#!/bin/bash

#Diretórios

echo "Linux Server Configuration Script - FCordis"
echo "Criando os diretórios...(1/5)"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#Grupos

echo "Criando os Grupos...(2/5)"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Usuários

echo "Criando os usuários...(3/5)"

#ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_ADM

#VEN
useradd debora -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_VEN

#SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd a.123456) -G GRP_SEC

echo "Adicionando o root como dono dos diretorios...(4/5)"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Modificando permissões dos diretórios...(5/5)"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script concluido!"

