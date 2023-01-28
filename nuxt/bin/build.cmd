@echo off

SET IMAGE_NAME=nuxt-ssr
SET IMAGE_TAG=latest

docker build -t %IMAGE_NAME%:%IMAGE_TAG% ..

@echo "docker push"
@rem docker login -u=656469722@qq.com -p=chenzw123 registry.cn-shenzhen.aliyuncs.com
@rem docker tag %IMAGE_NAME%:%IMAGE_TAG% registry.cn-shenzhen.aliyuncs.com/chenzw/%IMAGE_NAME%:%IMAGE_TAG%
@rem docker push registry.cn-shenzhen.aliyuncs.com/chenzw/%IMAGE_NAME%:%IMAGE_TAG%
