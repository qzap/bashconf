#Usage: to place any function that can be executed by bash

zins() {
   arg1=$1
   sudo zypper install $arg1
}

zgpg() {
   sudo zypper --gpg-auto-import-keys refresh
}

zdel() {
   args1=$1
   sudo zypper remove --clean-deps $args1
}

quitd() {
   xfce4-session-logout
}

function lp(){
   sudo lsof -iTCP -sTCP:LISTEN -n -P
}

function km(){
kill -2 `pgrep mongo`
echo "All running mongo in TCP was killed."
}

function dop(){

sudo systemctl stop docker
sudo systemctl start docker
docker ps -a
#echo " "
#docker stop $(docker ps -a -q) 
#echo "All container has stopped."
#docker rm $(docker ps -a -q) 
#echo "All container has removed."
}

function dor(){

function random_unused_port {
   (netstat --listening --all --tcp --numeric | 
    sed '1,2d; s/[^[:space:]]*[[:space:]]*[^[:space:]]*[[:space:]]*[^[:space:]]*[[:space:]]*[^[:space:]]*:\([0-9]*\)[[:space:]]*.*/\1/g' |
    sort -n | uniq; seq 1 1000; seq 1 65535
    ) | sort -n | uniq -u | shuf -n 1
}

RANDOM_PORT=$(random_unused_port)

  CONTAINER_PREFIX="kontainer_"
  NEW_CTN_ID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1 | cut -c1-7)
  NEW_CTN_NAME=$CONTAINER_PREFIX$NEW_CTN_ID

  echo "Execute root port : $RANDOM_PORT:$RANDOM_PORT"
  echo "Run new container : $NEW_CTN_NAME"
  
#docker run -d -p $RANDOM_PORT:$RANDOM_PORT --name $NEW_CTN_NAME mongo:3.0.4 && docker exec -i $NEW_CTN_NAME bash
docker run -d -p $RANDOM_PORT:$RANDOM_PORT --name $NEW_CTN_NAME mongo:3.0.4 && docker exec -it $NEW_CTN_NAME bash



 }
 
 function mos(){
     mongo 
 }
 

 
 function ghn(){

   while test $# -gt 0; do
           case "$1" in
                -n)
                    shift
                    first_argument=$1
                    shift
                    ;;
                *)
                   echo "$1 is not a recognized flag!"
                   return 1;
                   ;;
          esac
  done
  
  gh repo create --public $first_argument
  cd $first_argument

 }

 function ghm(){
     echo "You're set local directory: ${PWD}"
     echo "You're in remote directory: https://github.com/qzap/${PWD##*/}"
     FILEREADME="README.md"
     touch $FILEREADME
     
     echo """ # ${PWD##*/}
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/gookit/validate)](https://github.com/gookit/validate)
[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/qzap)
[![Hex.pm](https://img.shields.io/hexpm/l/plug.svg)](https://github.com/qzap/.licenses/blob/master/qzap-software-licenses/APACHE/APACHE2.0)
[![GoDoc](https://godoc.org/github.com/qzap/${PWD##*/}?status.svg)](https://godoc.org/)
     """ >> $FILEREADME
     
     git add README.md
     git cm "first commit"
     git psom
     echo "  "
     echo "SUCCESS create repo."
     echo "For shift to branch: 'main', please write 'git b -M main'."
}

function ghk(){
   while test $# -gt 0; do
           case "$1" in
                -n)
                    shift
                    first_argument=$1
                    shift
                    ;;
                *)
                   echo "$1 is not a recognized flag!"
                   return 1;
                   ;;
          esac
  done
  
  ghn -n $first_argument && ghm
 }
 
function progo() {
   cd ~/go/src/github.com/qzap
   echo "To easy start a project, please"
   echo "type command :"
   echo "$ ghk -n <NAME_OF_PROJECT>"
}

function fse() {
   /home/q/bin/flatpak run com.github.tchx84.Flatseal
}

function clwas() {
  sudo rm -rf /home/q/.local/share/Trash/files/*
}

function GET() {
     expandaddr=$1
     http GET http://localhost:9200$expandaddr?pretty=true > ~/Downloads/__ES/tmp.json
}

function plc() {
  mv ~/Documents/*.pdf ~/Documents/f.pdfs/
  mv ~/Downloads/*.pdf ~/Documents/f.pdfs/
  mv ~/Downloads/*.mp4 ~/Videos/
  mv ~/Downloads/*rpm ~/Documents/f.master/rpm/
  mv ~/Downloads/*tar.gz ~/Documents/f.master/compressed/
  mv ~/Downloads/*zip ~/Documents/f.master/compressed/
  mv ~/Downloads/*tgz ~/Documents/f.master/compressed/
  mv ~/Downloads/*AppImage ~/Documents/f.master/compressed/
}





[ -r ~/.bashrc ] && source ~/.bashrc

