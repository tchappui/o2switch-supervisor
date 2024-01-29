#!/bin/bash

if [ ! -f "/home/vyql2317/supervisor/supervisord.pid" ] || [ ! -e /proc/$(cat /home/vyql2317/supervisor/supervisord.pid) ]; then
    /home/vyql2317/supervisor/venv/bin/supervisord -c /home/vyql2317/supervisor/supervisord.conf
    /home/vyql2317/supervisor/venv/bin/supervisorctl -c /home/vyql2317/supervisor/supervisord.conf start all
    echo "La serveur supervisor a été démarré !"
else
    echo "La serveur est déjà en cours d'exécution !"
fi

