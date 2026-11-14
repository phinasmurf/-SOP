#set document(
  title: [Optimering af multivariable funktioner],
)
#set heading(numbering:"1.")
#set text(lang: "da")


Optimering spiller en central rolle i mange af de teknologier, der anvendes i dag, fra ruteplanlæg-
ning og ressourcefordeling til moderne kunstig intelligens. Særligt inden for machine learning er
det nødvendigt at finde de parametre, der giver den bedst mulige model ud fra store mængder
data. Når antallet af variable bliver stort, bliver analytiske løsninger ofte upraktiske, og numeriske
algoritmer bliver derfor nødvendige. I denne opgave skal der undersøges, hvordan optimerings-
algoritmer kan finde løsninger til multivariable problemer, og hvordan de anvendes i machine
learning. \ 

*Hvordan kan jeg minimere kvadratsums afvigelsen ved funktioner af to variable ved hjælp af
partiel afledte?* \

- Redegør for begreberne funktioner af flere variable og differentation af disse med henblik på bestemmelse af globale og lokale minima og maksima. 
- Redegør for, matematikken bag en optimeringsalgoritme (f.eks. gradient descent, Adam eller RMSprop) samt for brugen af optimering af multivariable funktioner i machine learning.
- Generér data, som du kan analysere algoritmen ud fra.
- Analysér, hvordan din valgte algoritme optimerer parametrene i en multivariabel model, og undersøg, hvordan dens evne til at finde en optimal model påvirkes af stigende støj i datasættet.
- Perspektivér til, hvordan optimering af multivariable funktioner anvendes til at træne mo- deller inden for machine learning. @jensen2024

#pagebreak()

#align(center)[
    #title()
    Josephine Holmbo Brandt \
Vejledere: Bo Larsen (bola) & Peter Snoer Jensen (psj) \
H.C. Ørsted Gymnasium \
Sidetal: 

indsæt forsidebillede("forside.png", width: 0.8) \
]

#pagebreak()
Resumé \
 
#pagebreak()
#outline(title: "Indholdsfortegnelse")

#pagebreak()
#set page(footer: "Side %p af %P", )
= Indledning \
Optimering spiller en central rolle i mange af de teknologier, der anvendes i dag, fra ruteplanlæg-
ning og ressourcefordeling til moderne kunstig intelligens. Særligt inden for machine learning er
det nødvendigt at finde de parametre, der giver den bedst mulige model ud fra store mængder
data. Når antallet af variable bliver stort, bliver analytiske løsninger ofte upraktiske, og numeriske
algoritmer bliver derfor nødvendige. I denne opgave skal der undersøges, hvordan optimerings-
algoritmer kan finde løsninger til multivariable problemer, og hvordan de anvendes i machine
learning. \

*Hvordan kan jeg minimere kvadratsums afvigelsen ved funktioner af to variable ved hjælp af partiel afledte?* \


- Der vil blive redegjort for begreberne funktioner af flere variable og differentation af disse med henblik på bestemmelse af globale og lokale minima og maksima. 
- Der vil blive redegjort for, matematikken bag en optimeringsalgoritme (f.eks. gradient descent, Adam eller RMSprop) samt for brugen af optimering af multivariable funktioner i machine learning.
- Der vil blive genereret data, som algoritmen kan analyseres ud fra.
- Der vil blive analyséret for, hvordan den valgte algoritme optimerer parametrene i en multivariabel model, og undersøges, hvordan dens evne til at finde en optimal model påvirkes af stigende støj i datasættet.
- Der vil blive perspektiveret til, hvordan optimering af multivariable funktioner anvendes til at træne modeller inden for machine learning.

= Metoder

= Redegørelse for funktioner af flere variable
En multivariabel funktion er en funktion, der har mere end én uafhængig variabel. En funktion har normalvis kun en uafhængig variabel, men i en multivariabel funktion kan der være to eller flere

== Lineær regression
- sammenhæng mellem variable, regression(smodel), modellens afvigelser fra observede data

== Mindste kvadrats metode
- Hvordan opstilles en kvadratsums funktion
- Hvordan kan man minimere den vha. differentation 

== Differentation af funktioner af flere variable
- Introduktion til funktioner af flere variable (f.eks. f(x,y) = x^2 + y^2 inkl. grafisk repræsentation)
- Partielle afledte (f.eks. ∂f/∂x, ∂f/∂y)
- Gradienter
- Bestemmelse af lokale og globale minima og maksima vha. partielle afledte (hvad er problemet med at finde globale minima og maksima, når der er flere variable? Det er nemmere med kun 2 variable, evt ift maskinæring med 1.000 parametre)

== Mindste kvadrats metode med flere variable
- Hvordan udvides mindste kvadrats metode til funktioner af flere variable
- Hvordan bliver afvigelsen en funktion af flere variable

= Optimeringsalgoritme
I maskinlæring anvendes optimeringsalgoritmer til at finde de parametre, der giver den bedst mulige model ud fra store mængder data. Derfor bygger optimerinfsalgoritmer netop på matematikken bag multivariable funktioner og differentation af disse.
Noget med analytisk og numerisk optimering.
- Forklar at analytisk metode ik er nødvendig, eller muligt, men numerisk metode er nødvendig, når der er mange variable.

== Matematikken bag Gradient Descent
Gradient Descent er den mest basale og mest anvendte optimeringsalgortime, derfor er den en god start.
- Inkluder f(x,y) = x^2 + y^2 som eksempel, og forklar hvordan gradienten bruges til at finde minimum.
- Vis matematikken og kobl det på mindste kvadrats metode, og hvordan man kan bruge gradient descent til at finde minimum af kvadratsums afvigelsen. 

== Hvorfor er optimering vigtigt i machine learning
- Forklar at optimering er vigtigt i machine learning, fordi det bruges til at finde de parametre, der giver den bedst mulige model ud fra store mængder data.
- Det er ikke muligt med analytisk optimering, når der er mange variable, derfor er numerisk optimering nødvendig.


= Data
= Analysering af algoritmen
= Perspektivering
= Konklusion




= Litteraturliste
#bibliography("kilder.bib", title:none, style:"chicago-author-date")

= Bilag
