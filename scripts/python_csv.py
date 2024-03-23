import csv

# Données à ajouter au fichier CSV
data = [
    ["Jean", 25, "Paris"],
    ["Marie", 30, "Lyon"],
    ["Pierre", 22, "Marseille"],
    ["Sophie", 35, "Toulouse"]
]

# Nom du fichier CSV
csv_file = "personnes.csv"

# Écriture des données dans le fichier CSV
with open(csv_file, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["Nom", "Âge", "Ville"])
    writer.writerows(data)

print("Fichier CSV créé avec succès:", csv_file)

