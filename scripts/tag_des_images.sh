#! /bin/bash

echo "---- Uploader TDH imaghes -- ";

REGISTRY=jorgegonzalezchakray/
TEMENOS_REGISTRY=mybank/
docker image ls | grep "mybank/.*latest" | awk '{print $1}' | sed 's/mybank\///' | while read -r image; 
do
    echo "Tagging image : $image";
    IMAGE_TAGGED=$REGISTRY$image":"$1
    docker tag  $TEMENOS_REGISTRY$image $IMAGE_TAGGED
    echo "Pushing to $REGISTRY$image"
    docker push $IMAGE_TAGGED
done