ROOTPATH=`dirname $(readlink -f $0)`
echo $ROOTPATH
echo $ROOTPATH"/docker"
img_name="docker-kedro:latest"
dockerfile_path=spaceflights/docker
cd $ROOTPATH"/docker"
echo "haaaaaaaaaaa!"
if [[ "$(docker images -q $img_name  2> /dev/null)" == "" ]]
then
    docker compose up --build
else
    docker compose down
    docker compose up
fi