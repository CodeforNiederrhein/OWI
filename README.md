# OWI

**Projekt OWI**: Bußgelder für Ordnungswidrigkeiten im ruhenden Verkehr der Stadt Moers

Dieses Projekt wurde auf dem [ODDMO16](http://hackday.moers.de/ "Open Data-Hackday") am 09./10.04.2016 initiiert. Es diente als einführendes Beispiel zur Auswertung und Visualisierung von Daten mithilfe von R. Der R-Code ist hier teilweise auf Zuruf und durch Ausprobieren von Befehlen seitens R-Einsteigern entstanden; er befindet sich daher in einem frühen Entwurfszustand und bedarf noch starker Überarbeitung in kommenden Projektphasen.

*Eine zweite Gruppe um @MyDigamma hatte ebenfalls die OWI-Daten am ODDMO ausgewertet. Bitte meldet Euch, damit wir Eure Ergebnisse hier hinzufügen oder Euch querverlinken können.*

## Ergebnisse
Die knapp 50.000 Datensätze enthalten die Bußgelder (Ordnungswidrigkeiten) für den ruhenden Verkehr im Jahr 2015 in Moers.

### Die häufigsten Tatorte
Die folgenden Tatorte waren am stärksten betroffen.

* **Neumarkt / A, Parkplatz**: 3347 Fälle
* **Mühlenstraße / DE, Parkplatz**: 1857 Fälle
* **Kautzstraße / B, Parkplatz**: 1121 Fälle
* **Hanckwitzstraße / B, Parkplatz**: 1034 Fälle
* **Meerstraße / B, Schotterparkplatz**:  882 Fälle
* **Meerstraße / B, Parkplatz**:  876 Fälle

### Die häufigsten Tatbestände
Die folgenden Ordnungswidrigkeiten wurden am häufigsten erfasst.

* Sie parkten im Bereich eines Parkscheinautomaten ohne gültigen Parkschein. (9953 Fälle) [Heatmap](http://geojson.ft0.ch/heat/#http://w-moers.ft0.ch/q/bussgeld/%20/tatbestand=113140 "Heatmap (auf OpenStreetMap)")
* Sie überschritten an einer Parkuhr die zulässige / im Bereich eines Parkscheinautomaten die auf dem Parkschein angegebene Parkzeit. (4203 Fälle) [Heatmap](http://geojson.ft0.ch/heat/#http://w-moers.ft0.ch/q/bussgeld/%20/tatbestand=113120 "Heatmap (auf OpenStreetMap)")
* Sie parkten im Bereich eines eingeschränkten Haltverbots für eine Zone (Zeichen 290.1, 290.2), ohne die durch Zusatzzeichen vorgeschriebene Parkscheibe (Bild 318) verwendet / von außen gut lesbar im oder am
Fahrzeug angebracht zu haben. (4023 Fälle) [Heatmap](http://geojson.ft0.ch/heat/#http://w-moers.ft0.ch/q/bussgeld/%20/tatbestand=113240 "Heatmap (auf OpenStreetMap)")
* Sie parkten bei Zeichen 314/315, ohne die durch Zusatzzeichen vorgeschriebene Parkscheibe (Bild
318) von außen gut lesbar im oder am Fahrzeug angebracht zu haben. Zeitüberschreitung bis 30 Minuten. (3811 Fälle) [Heatmap](http://geojson.ft0.ch/heat/#http://w-moers.ft0.ch/q/bussgeld/%20/tatbestand=113300 "Heatmap (auf OpenStreetMap)")
* Sie parkten im absoluten Haltverbot (Zeichen 283). (2453 Fälle) [Heatmap](http://geojson.ft0.ch/heat/#http://w-moers.ft0.ch/q/bussgeld/%20/tatbestand=141312 "Heatmap (auf OpenStreetMap)")
* Sie hielten/parkten verbotswidrig auf einem Gehweg. (1935 Fälle) [Heatmap](http://geojson.ft0.ch/heat/#http://w-moers.ft0.ch/q/bussgeld/%20/tatbestand=112402 "Heatmap (auf OpenStreetMap)")

Zu den einzelnen Tatbeständen sind Heatmaps verfügbar, die vom OK-Lab Zürich erstellt wurden. 

Die meisten Ordnungswidrigkeiten wurden an einem **Dienstag** (9911 Fälle) begangen (bzw. registriert), **Freitag** (7603 Fälle), **Samstag** (2641 Fälle) und **Sonntag** (367 Fälle) sind vergleichsweise selten betroffen.

### Zeitliche Verteilung der Tatbestände 

Die Balkengrafik zeigt die Verteilung auf die Stunden des Tages. Dabei wird auch der zu zahlende Betrag farblich repräsentiert. (Am häufigsten: 10,- EUR) 

![Balkengrafik](https://raw.githubusercontent.com/CodeforNiederrhein/OWI/master/Rplot01.png)