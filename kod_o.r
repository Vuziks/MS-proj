#wczytanie danych

dane <- read.csv2("dane.csv", sep=";")
stara_hala <- as.vector(dane[[1]], mode = "double")
nowa_hala <- as.vector(dane[[2]], mode = "double")
nowa_hala <- na.omit(nowa_hala)  #nie uwzgledniaj NA

#miary przecietne - srednia arytmetyczna (szereg szczegolowy)

suma_stara <- sum(stara_hala)
liczba_stara <- length(stara_hala)

suma_nowa <- sum(nowa_hala)
liczba_nowa <- length(nowa_hala)

srednia_stara <- suma_stara / liczba_stara
srednia_nowa <- suma_nowa / liczba_nowa


#szereg przedzialowy
nowa_przedzial <- cut(nowa_hala, sqrt(liczba_nowa))
table(nowa_przedzial)

