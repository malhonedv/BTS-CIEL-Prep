#!/bin/bash
fichierexemple1="logs1.log"
fichierexemple2="logs2.log"
fichierexemple3="logs3.log"
touch "$fichierexemple1"
echo "Création du fichier : $fichierexemple1 terminé !"
touch "$fichierexemple2"
echo "Création du fichier : $fichierexemple2 terminé !"
touch "$fichierexemple3"
echo "Création du fichier : $fichierexemple3 terminé !"
echo "Organisation commencé !"
echo "Vérification de l'existance du dossier..."
if [ ! -d "archives" ]; then
	echo "Dossier non-existant. Création du fichier."
	mkdir -p archives
else
	echo "Dossier existant. Continuation du processus..."
fi
mv *.log archives
if [ $? -eq 0 ]; then
	echo "Processus d'organisation réussi !"
else
	echo "Echec du processus d'organisation."
fi

