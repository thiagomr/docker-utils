export VOLUMES_DIR=/var/volumes/docker

up() {
    docker-compose up --build -d  $1
}

logs() {
    docker-compose logs -f $1
}

down() {
    docker-compose down
}

stop() {
    docker-compose stop $1
}

rmi() {
    docker rmi $(docker images -f dangling=true -q) --force
}


$*