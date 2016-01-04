#!/bin/zsh
num=$((RANDOM % 100))
if [ $num -le 20 ]; then
    curl -d '' http://localhost:3000/girls/1/auto_responses
fi
