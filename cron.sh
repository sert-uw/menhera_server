#!/bin/zsh
num=$((RANDOM % 100))
if [ $num -le 60 ]; then
    curl -d '' http://localhost:3000/girls/1/auto_responses
fi
