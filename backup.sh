#!/bin/bash
TARGET_DIR="data_a_backuper"
BACKUP_FILE="backup_$(date '+%Y-%m-%d_%H-%M-%S').tar.gz"
echo "Commencement de l'archivage"
if [ ! -d "$TARGET_DIR" ]; then
	echo "Création du fichier manquant"
	mkdir -p $TARGET_DIR
fi

tar -czf $BACKUP_FILE $TARGET_DIR

if [ $? -eq 0 ]; then
	echo "Archivage réussi"
else
	echo "ERREUR: Echec de l'archivage."
fi
