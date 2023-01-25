PROJECT_ROOT=`dirname $(readlink -f $0)`
img_name="docker-kedro:latest"
dockerfile_path=spaceflights/docker

cd $PROJECT_ROOT"/docker"

if [[ "$(docker images -q $img_name  2> /dev/null)" == "" ]]
then
    docker compose up --build
else
    docker compose down
    docker compose up
fi