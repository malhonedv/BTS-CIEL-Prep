# Sprint 30 Jours BTS CIEL IR

Dossier de preuves alternatives pour l'admission à l'UIMM Toulouse

## Jour 2: Scripts d'Automatisation Bash

J'ai créé 3 scripts d'automatisation pour prouver ma maîtrise de la logique Bash (`if`, `$?`, `$(...)`).

* **`backup.sh`**: Un script résilient qui crée un backup `.tar.gz` horodaté d'un dossier. Il anticipe les échecs (avec `if [ ! -d ... ]`) et valide son succès (via `if [ $? -eq 0 ]`).
* **`organizer.sh`**: Un script réexecutable (via `mkdir -p`) qui range automatiquement tous les fichiers `*.log` dans un dossier nommé `archives/` dédié.
* **monitoring.sh**: Un script simple qui utilise la "Command substitution" (`$(df -h)`) pour générer un rapport sur l'utilisation du disque.


