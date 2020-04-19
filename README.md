# Erix Setup
Dies ist meine persönliche Setup-Routine, um Ubuntu 20.04 LTS ("Focal Fossa") auf meinen Rechnern nach der Installation auf meine persönlichen Bedürfnisse zuzuschneiden.

## Verwendung
### Download
Da bei der ersten Verwendung des Programms git noch nicht auf dem Rechner installiert sein dürfte, bietet sich der Download als Zip-Archiv an:

```
$ wget https://github.com/pille1842/erixsetup/archive/master.zip
$ unzip master.zip
$ mv erixsetup{-master,}
$ rm master.zip
```

### Einstellungen prüfen & vorbereiten
Im nächsten Schritt sollten die Einstellungen in der Datei `settings` auf Korrektheit geprüft werden.

Auf einem anderen Rechner sollte nun mit dem Programm `backup-essentials` eine Datensicherung der Verzeichnisse `~/.ssh` und `~/.gnupg` erstellt werden:

```
$ ./backup-essentials
```

Das entstandene Archiv (`essentials.tar.gz.gpg`) muss nun auf dem Zielrechner ins Verzeichnis `~/erixsetup` gelegt werden.

### Setup starten
Anschließend kann der Setup-Durchlauf gestartet werden:

```
$ ./setup
```

Sollten während des Durchlaufs Fehler auftreten, kann das Setup-Programm jederzeit wiederholt und die bereits erledigten Schritte können übersprungen werden.

### Nachbereitung
Im Nachgang kann das Verzeichnis `~/erixsetup` gelöscht und durch ein ordentlich geklontes Git-Repository ersetzt werden:

```
$ rm -r ~/erixsetup
$ cd ~/Code
$ git clone git@github.com:pille1842/erixsetup.git
```

## Lizenz
Dieses Programm ist lizenziert unter der GNU GPL v3 oder höher. Siehe die Datei `LICENSE`.

## Changelog
Eine chronologische Auflistung der Änderungen ist der Datei `CHANGELOG.md` zu entnehmen.
