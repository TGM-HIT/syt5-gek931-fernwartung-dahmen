# GK931 Fernwartung "Anwendung und Kryptographie"

Autor: Felix Dahmen

## 1. Einleitung

Die hier gezeigte Repository definiert eine Docker Config, die ein SSH Tunneling Bespiel zeigen soll

Die DMZ soll von außen erreichbar sein und daber der Weg zum Server darstellen, der mithilfe von einem SSH Tunnel über die DMZ erreichbar ist.

## 2. Nutzung

```
git clone https://github.com/TGM-HIT/syt5-gek931-fernwartung-dahmen
cd syt5-gek931-fernwartung-dahmen
chmod +x ./start.sh
./start.sh
```

Das Script erstellt die benötigten SSH-Keys, die für die Verbindung zwischen DMZ und Server wichtig sind.
