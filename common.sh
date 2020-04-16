#!/bin/bash
# Erix Setup Version 0.1.0 -- Setup-Routine für Ubuntu 20.04 LTS
# Copyright (C) 2020 Eric Haberstroh <gpg@erixpage.de>

# Dieses Programm ist Freie Software: Sie können es unter den Bedingungen
# der GNU General Public License, wie von der Free Software Foundation,
# Version 3 der Lizenz oder (nach Ihrer Wahl) jeder neueren
# veröffentlichten Version, weiter verteilen und/oder modifizieren.

# Dieses Programm wird in der Hoffnung bereitgestellt, dass es nützlich sein wird, jedoch
# OHNE JEDE GEWÄHR; sogar ohne die implizite
# Gewähr der MARKTFÄHIGKEIT oder EIGNUNG FÜR EINEN BESTIMMTEN ZWECK.
# Siehe die GNU General Public License für weitere Einzelheiten.

# Sie sollten eine Kopie der GNU General Public License zusammen mit diesem
# Programm erhalten haben. Wenn nicht, siehe <https://www.gnu.org/licenses/>.

#### Basisfunktionen

## Programmversion
VERSION="0.1.0"

## Farbausgabe
# Num  Colour    #define         R G B

# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1
BLACK=0
RED=1
GREEN=2
YELLOW=3
BLUE=4
MAGENTA=5
CYAN=6
WHITE=7

## Fehler- und sonstige Meldungsausgabe
notice() {
    tput setaf $BLUE
    echo -n "HINWEIS: "
    tput sgr0
    echo "$1"
}

success() {
    tput setaf $GREEN
    echo -n "ERFOLG: "
    tput sgr0
    echo "$1"
}

error() {
    tput setaf $RED
    echo -n "FEHLER: "
    tput sgr0
    echo "$1"
}

warn() {
    tput setaf $YELLOW
    echo -n "WARNUNG: "
    tput sgr0
    echo "$1"
}

fatal() {
    error "$1"
    error "Ende des Programms."
    exit 1
}

## Eingabe
cont_skip_abort() {
    echo "Möchten Sie fortfahren, diesen Schritt überspringen oder die Ausführung ganz abbrechen?"
    select yn in "Fortfahren" "Überspringen" "Abbrechen"; do
        case "$yn" in
            "Fortfahren"   ) return 0;;
            "Überspringen" ) return 1;;
            "Abbrechen"    ) fatal "Die Ausführung wurde durch den Benutzer abgebrochen.";;
        esac
    done
}
