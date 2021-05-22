#!/bin/bash
terraformVersion (){
    echo "Verificando versão do Terraform"
    terraform --version
}
destroyVPC (){
    echo "Destruindo VPC..."
    pushd ../terraform/vpc-call/
    terraform destroy --auto-approve
    popd
}
destroyRT (){
    echo "Destruindo Route Tables..."
    pushd ../terraform/RT-call
    terraform destroy --auto-approve
    popd
}
destroyBucketS3 (){
    echo "Destruindo Bucket S3..."
    pushd ../terraform/S3
    terraform destroy --auto-approve
    popd
}
destroyECR (){
    echo "Destruindo ECR..."
    pushd ../terraform/ECR
    terraform destroy --auto-approve
    popd
}

terraformVersion
destroyRT
destroyVPC
destroyBucketS3
destroyECR