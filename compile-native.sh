#!/usr/bin/env sh

./mvnw clean package \
    -DskipTests=true \
    -Dnative=true \
    -Dnative-image.docker-build=true

read -p "Assembly zip? (yes/no): " isAssembly

if [[ "$isAssembly" == "yes" ]]; then

if [[ `docker image ls | grep assembly | cut -d ' ' -f1` != "assembly" ]]; then
    docker build -t assembly .
fi

pwdstr="pwd"
if [[ "$OSTYPE" == "msys" ]]; then
    pwdstr="pwd -W"
fi

docker run -v $($pwdstr):/temp assembly
fi
