#!/bin/bash

if [ ! -f "$(pwd)/supervisord.pid" ] || [ ! -e /proc/$(pgrep -f "supervisord") ]; then
    $(pwd)/venv/bin/supervisord -c $(pwd)/supervisord.conf
    $(pwd)/venv/bin/supervisorctl -c $(pwd)/supervisord.conf start all
    echo "La serveur supervisor a été démarré !"
else
    echo "La serveur est déjà en cours d'exécution !"
fi

