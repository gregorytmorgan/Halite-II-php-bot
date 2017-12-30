#!/bin/sh

export HALITE_PHP_ENV=dev

if [ "$1" == "" ]; then
  SEED=""
else
  SEED="-s 1621542274"
fi

#./halite -s 1621542274 -d "240 160" "php MyBot.php" "php MyBot.php"
./halite $SEED -d "240 160" "php MyBot.php" "php MyBot.php"
