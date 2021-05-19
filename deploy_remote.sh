#!/bin/bash
#deploy_remote.sh

java -version
if [[ $? != 0 ]]
then
    sudo amazon-linux-extras install -y java-openjdk11
fi

sudo mkdir -p /secrets
sudo cp kp-emmanuelle.pem /secrets

# On copie les fichiers sur la machine distante
scp -i /secrets/kp-emmanuelle.pem helloWorld.class ec2-user@ec2-52-41-112-122.us-west-2.compute.amazonaws.com/app  # adresse ip machine jenkins

# On exécute l'application sur la machine distante
ssh -i /secrets/kp-emmanuelle.pem ec2-user@ec2-50-112-12-182.us-west-2.compute.amazonaws.com 'cd/app && java helloWorld'  # adresse ip machine distante

