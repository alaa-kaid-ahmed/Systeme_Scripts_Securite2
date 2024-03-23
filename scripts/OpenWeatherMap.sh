#!/bin/bash

# URL de l'API Web OpenWeatherMap
API_URL="http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=maclé"
# Chemin du fichier de journal
LOG_FILE="api_log.txt"

# Fonction pour journaliser les messages
log_message() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') $1" >> "$LOG_FILE"
}

# Fonction pour effectuer une requête GET à l'API
get_data_from_api() {
    local response=$(curl -s -o /dev/null -w "%{http_code}" "$API_URL")
    if [ "$response" -eq 200 ]; then
        local data=$(curl -s "$API_URL")
        echo "$data"
        log_message "Requête GET vers l'API réussie."
        log_message "Réponse de l'API : $data"
    else
        log_message "Erreur lors de la requête GET vers l'API. Code de réponse HTTP : $response"
        exit 1
    fi
}

# Exécuter la fonction pour obtenir les données de l'API
get_data_from_api
