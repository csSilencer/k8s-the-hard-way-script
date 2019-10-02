#!/usr/bin/env bash

cat << EOF
#####################################
# 02. Installing the Client Tools
# https://github.com/kelseyhightower/kubernetes-the-hard-way/blob/master/docs/02-client-tools.md
#####################################
EOF

echo "Install CFSSL"
curl -o cfssl https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/darwin/cfssl
curl -o cfssljson https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/darwin/cfssljson

chmod +x cfssl cfssljson

sudo mv cfssl cfssljson /usr/local/bin/

echo "Verification"
cfssl version

echo "Install kubectl"
curl -o kubectl https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/darwin/amd64/kubectl

chmod +x kubectl

sudo mv kubectl /usr/local/bin/

echo "Verification"
kubectl version --client
echo "The output should be like this."
cat << EOF
Client Version: version.Info
{Major:"1", Minor:"15", GitVersion:"v1.15.3",
GitCommit:"2d3c76f9091b6bec110a5e63777c332469e0cba2",
GitTreeState:"clean", BuildDate:"2019-08-19T11:13:54Z",
GoVersion:"go1.12.9", Compiler:"gc", Platform:"linux/amd64"}
EOF

cat << EOF
