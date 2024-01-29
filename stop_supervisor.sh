#!/bin/bash

if pgrep -f "supervisord"; then
    /home/vyql2317/supervisor/venv/bin/supervisorctl -c /home/vyql2317/supervisor/supervisord.conf stop all
    pkill -f "supervisord"
    rm /home/vyql2317/supervisor/supervisord.pid
    echo "Le serveur supervisor a été stoppé !"
else
    echo "Le serveur supervisor n'est pas en cours d'éxécution !"
fi