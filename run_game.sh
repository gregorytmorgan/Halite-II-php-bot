#!/bin/bash
#
# Run a Halite game
#
# Pass in SEED to reproduce the same game. Pass in 0 to produce
# a random new game, nothing to produce the default game/seed.  
#
export HALITE_PHP_ENV=dev

if [ "$1" == "" ]; then
    SEED="-s 1621542274"
elif [ "$1" == "0" ]; then
    SEED=""    
else 
    SEED="-s $1"
fi

#./halite -s 1621542274 -d "240 160" "php MyBot.php" "php MyBot.php"
./halite $SEED -d "240 160" "php MyBot.php" "php MyBot.php"
