#!/bin/bash

if pgrep -f "supervisord"; then
    $(pwd)/venv/bin/supervisorctl -c $(pwd)/supervisord.conf stop all
    pkill -f "supervisord"
    rm $(pwd)/supervisord.pid
    echo "Le serveur supervisor a été stoppé !"
else
    echo "Le serveur supervisor n'est pas en cours d'éxécution !"
fi
