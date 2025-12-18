#!/bin/bash
echo "Do you want to clone FND? (y/n)"
read opt
if [ "$opt" == "y" ]; then
    rm -rf FND
    git clone https://github.com/Driox07/proyecto-gps-25-26-gb02-FND.git FND
fi
echo "Do you want to clone SYU? (y/n)"
read opt
if [ "$opt" == "y" ]; then
    rm -rf SYU
    git clone https://github.com/Driox07/proyecto-gps-25-26-gb02-SYU.git SYU
fi
echo "Do you want to clone TYA? (y/n)"
read opt
if [ "$opt" == "y" ]; then
    rm -rf TYA
    git clone https://github.com/PiporGames/proyecto-gps-25-26-TYA.git TYA
fi
echo "Do you want to clone TPP? (y/n)"
read opt
if [ "$opt" == "y" ]; then
    rm -rf TPP
    git clone https://github.com/dmiguelp/proyecto-gps-25-26-gb02-TPP.git TPP
fi
echo "Do you want to clone PT? (y/n)"
read opt
if [ "$opt" == "y" ]; then
    rm -rf PT
    git clone https://github.com/sKaiZk/proyecto-gps-25-26-gb02-PT-main.git PT
fi
echo "Do you want to clone RYE? (y/n)"
read opt
if [ "$opt" == "y" ]; then
    rm -rf RYE
    git clone https://github.com/Plumiel/proyecto-gps-25-26-gb02-RYE.git RYE
fi