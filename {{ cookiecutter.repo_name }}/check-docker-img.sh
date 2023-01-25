img_name="docker-kedro:latest"
dockerfile_path=spaceflights/docker
if [[ "$(docker images -q $img_name  2> /dev/null)" == "" ]]
then
    docker build -t $img_name spaceflights/
fi
