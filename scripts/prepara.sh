#!/bin/bash
terraformVersion (){
    echo "Verificando versão do Terraform"
    terraform --version
}
criaVPC (){
    echo "Criando VPC..."
    pushd ../terraform/vpc-call/
    terraform init
    terraform apply --auto-approve
    popd
}
criaRT (){
    echo "Criando Route Tables..."
    pushd ../terraform/RT-call
    terraform init
    terraform apply --auto-approve
    popd
}
criaBucketS3 (){
    echo "Criando Bucket S3..."
    pushd ../terraform/S3
    terraform init
    terraform apply --auto-approve
    popd
}
criaECR (){
    echo "Criando ECR..."
    pushd ../terraform/ECR
    terraform init
    terraform apply --auto-approve
    popd
}
copiaCredentialsS3 (){
    aws s3 cp ~/.aws/config s3://hackathon-fiap-5dvp-grupo2/instance-need/.aws/config
    aws s3 cp ~/.aws/credentials s3://hackathon-fiap-5dvp-grupo2/instance-need/.aws/credentials
    aws s3 cp ~/.ssh/fiap-lab.pem s3://hackathon-fiap-5dvp-grupo2/instance-need/.ssh/fiap-lab.pem
}

terraformVersion
criaVPC
criaRT
criaBucketS3
criaECR
copiaCredentialsS3