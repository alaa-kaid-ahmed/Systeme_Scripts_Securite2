#!/bin/bash

# Fonction pour installer Apache ou Nginx
install_web_server() {
    read -p "Choisissez le serveur web à installer (Apache/Apache2 ou Nginx): " server_choice
    case "$server_choice" in
        Apache|Apache2)
            sudo apt-get update
            sudo apt-get install apache2
            ;;
        Nginx)
            sudo apt-get update
            sudo apt-get install nginx
            ;;
        *)
            echo "Choix invalide. Veuillez choisir Apache/Apache2 ou Nginx."
            install_web_server
            ;;
    esac
}

# Fonction pour installer phpMyAdmin
install_phpmyadmin() {
    sudo apt-get update
    sudo apt-get install phpmyadmin
}

# Fonction pour installer MySQL ou MariaDB
install_database_server() {
    read -p "Choisissez le système de gestion de base de données (MySQL ou MariaDB): " db_choice
    case "$db_choice" in
        MySQL)
            sudo apt-get update
            sudo apt-get install mysql-server
            ;;
        MariaDB)
            sudo apt-get update
            sudo apt-get install mariadb-server
            ;;
        *)
            echo "Choix invalide. Veuillez choisir MySQL ou MariaDB."
            install_database_server
            ;;
    esac
}

# Fonction pour installer Node.js et npm
install_nodejs_npm() {
    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm
}

# Fonction pour installer Git
install_git() {
    sudo apt-get update
    sudo apt-get install git
}

# Installation des composants
install_web_server
install_phpmyadmin
install_database_server
install_nodejs_npm
install_git

echo "Installation terminée."
