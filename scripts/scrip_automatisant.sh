#!/bin/bash

# Fonction pour afficher le menu principal
afficher_menu() {
    clear
    echo "1. Rechercher les mises à jour disponibles"
    echo "2. Mettre à jour tous les logiciels"
    echo "3. Quitter"
}

# Fonction pour rechercher les mises à jour disponibles
rechercher_mises_a_jour() {
    echo "Recherche des mises à jour disponibles..."
    sudo apt update
}

# Fonction pour mettre à jour tous les logiciels
mettre_a_jour_logiciels() {
    echo "Mise à jour de tous les logiciels..."
    sudo apt upgrade -y
}


# Boucle principale du script
while true; do
    afficher_menu

    read -p "Veuillez sélectionner une option : " choix

    case $choix in
        1)
            rechercher_mises_a_jour
            read -p "Appuyez sur Entrée pour revenir au menu principal..."
            ;;
        2)
            mettre_a_jour_logiciels
            read -p "Appuyez sur Entrée pour revenir au menu principal..."
            ;;
        3)
            echo "Au revoir!"
            exit 0
            ;;
        *)
            echo "Option invalide. Veuillez sélectionner une option valide."
            read -p "Appuyez sur Entrée pour continuer..."
            ;;
    esac
done
