#!/bin/bash

# La tâche à ajouter
CRON_TASK="*/5 * * * * cd $(cat ./path.txt) && /bin/bash $(pwd)/start_supervisor.sh >/dev/null 2>&1"

# Vérifiez si la tâche est déjà dans crontab
if ! crontab -l | grep -Fxq "$CRON_TASK"; then
    # La tâche n'est pas présente, l'ajouter à crontab
    (crontab -l 2>/dev/null; echo "$CRON_TASK") | crontab -
    echo "Tâche ajoutée à crontab."
else
    # La tâche est déjà dans crontab
    echo "La tâche est déjà présente dans crontab."
fi

