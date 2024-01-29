#!/bin/bash

# Supprimez la tâche de crontab
(crontab -l  | grep -v "start_supervisor.sh") | crontab -
echo "Tâche retirée de crontab."
