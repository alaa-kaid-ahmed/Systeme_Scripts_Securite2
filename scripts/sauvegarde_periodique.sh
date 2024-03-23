#!/bin/bash

# Chemin du dossier à sauvegarder
source_dir="/home/alaa/Documents/Plateforme"

# Chemin du dossier où sauvegarder les fichiers de sauvegarde
backup_dir="/home/alaa/Documents/sauvegarde_periodique"

# Nom du fichier de sauvegarde
backup_file="backup_$(date +'%Y-%m-%d_%H-%M-%S').tar.gz"

# Créer le dossier de sauvegarde s'il n'existe pas
mkdir -p "$backup_dir"

# Créer une archive compressée de la sauvegarde
tar -czf "$backup_dir/$backup_file" "$source_dir"

# Afficher un message de confirmation
echo "Sauvegarde effectuée avec succès dans $backup_dir/$backup_file"
