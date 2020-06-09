#!/bin/bash

echo " Age of Empire II wiki"
echo " segítségért ▒vá▒^▒^▒válassza a -h opciót "

while getopts hc:s:u:t: options; do
  case $options in
      h)
       echo  "Kiírja az adot ... tulajdonságait id vagy név alapján"
       echo  "-c             civilizáció      [1-18]"
       echo  "-s             épület         [1-59]"
       echo  "-u             egység          [1-104]"
       echo  "-t             technológia     [1-140]";;
      c) civid=$OPTARG
      curl "http://age-of-empires-2-api.herokuapp.com/api/v1/civilization/"$civid  > civ.txt
      cat civ.txt ;;
      s) structid=$OPTARG
       curl "http://age-of-empires-2-api.herokuapp.com/api/v1/structure/"$structid  > strukt.txt
       cat strukt.txt ;;
      u) unitid=$OPTARG
       curl "http://age-of-empires-2-api.herokuapp.com/api/v1/unit/"$unitid > unit.txt
       cat unit.txt ;;
      t) techid=$OPTARG
         curl "http://age-of-empires-2-api.herokuapp.com/api/v1/technology/"$techid > tech.txt
        cat tech.txt ;;

   esac
done
