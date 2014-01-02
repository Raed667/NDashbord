#!/bin/bash

ch='7';

function lister() {
  ifconfig
}

function actdesact(){
echo "Entrer le nom de l'interface "
read nm

echo "Act/Desact [a/d]"
read chi
if [ $chi = 'a' ]
then
ifconfig $nm up
elif [ $chi = 'd' ]
then 
ifconfig $nm up
fi
}

function tmp() {
read -p "interface" inter
read -p "ip" ip
read -p "mask" msk

ifconfig $inter $ip netmask $msk

}
function perm() {
echo "P"
}




function config() {
echo "Config temp/perm ? [t/p]"
read cfg
        if [ $cfg = 't' ]
        then
        tmp;
        elif [ $cfg = 'p' ]
        then
        perm;
        fi
}

function changedns(){
echo ""
}

function changenom() {
echo ""
}

function redemarer() {
echo ""
}






while [ $ch -ne '0' ]
do
#clear;
  echo ' Dashbord : '
  echo '1/ Lister tout'
  echo '2/ Activer/Desactiver Carte'
  echo '3/ Config carte '
  echo '4/ Chnage DNS '
  echo '5/ Chnager nom de machine'
  echo '6/ Redemarer le service Rx'
  echo '0/ exit';
  
  
  read ch;


case $ch in
"1")
clear;
echo "Liste des cartes:"
 lister
      ;;
"2")
clear;
echo "Act/Desac une carte:\n"
actdesact
      ;;
"3")
clear;
echo "Config :\n"
    config
     ;;
"4")
echo "Chnage DNS (expl 8.8.8.8) \n"
     ;;
"5")
clear;
echo "nouveau nom ? \n"
     ;;
"6")
clear;
echo "Wait ... \n"
     ;;
"0")
clear;
clear;
echo "Bye! "
     ;;


*)
echo "Ce choix n'est pas valid"
     ;;
     esac

done
      
      

