@echo off

SET IMAGE_NAME=jdk8-chrome
SET IMAGE_TAG=latest

docker build -t %IMAGE_NAME%:%IMAGE_TAG% ..

@echo "docker push"
docker login -u=656469722@qq.com -p=chenzw123 registry.cn-shenzhen.aliyuncs.com
docker tag %IMAGE_NAME%:%IMAGE_TAG% registry.cn-shenzhen.aliyuncs.com/chenzw/%IMAGE_NAME%:%IMAGE_TAG%
docker push registry.cn-shenzhen.aliyuncs.com/chenzw/%IMAGE_NAME%:%IMAGE_TAG%
