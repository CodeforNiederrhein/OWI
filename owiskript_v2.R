print("Starte Skript.")
o <- scan("owi-daten-rv-2015.csv", sep=";", #nmax=337,
             what = list(tag = "", 
                         zeit = "", 
                         ort = "",
                         tat = "",
                         geld = ""),
             skip=1 )

for(i in 1:length(o$zeit))  # jede Zeile durchgehen, um führende Null bei Uhrzeit zu ergänzen (hässlicher Workaround)
{
  if ( nchar(o$zeit[i]) == 3 )
  {
    o$zeit[i] = paste("0",o$zeit[i],sep = "") 
  }
}

o$datum_mit_zeit = strptime(paste(o$tag, o$zeit),  "%d.%m.%Y %H%M")
o$stunde = as.numeric(substr(o$zeit,1,2))
o$tag <- as.Date(o$tag, format = "%d.%m.%Y")
o$wtag <- weekdays(o$tag)
eurosymbol="\U20AC" #Direkte Eingabe von "???" in RStudio-Skript führt zu Fehlcodierung
o$eur <- round(as.numeric(gsub(",",".",gsub(eurosymbol,"",o$geld)))/5.0)*5 # Runden wegen Tippfehler-Werte 15,01 ??? etc

owi=as.data.frame(o) # Nun weiter mit Data Frame
owi = na.exclude(owi) #Bons mit "-  ???" werden als Fehlbuchungen interpretiert und aus Datenimport eliminiert

print(summary(owi))


plot(tapply(owi$eur,owi$stunde,sum )/365,type="h")
print(tapply(owi$eur,owi$stunde,sum ))

library(ggplot2)

#with(owi, table(eur,stunde))
g=ggplot(owi, aes(x = stunde, fill = as.character(eur))) + geom_bar()
print(g)
print("Skript beendet.")
