#set document(
  title: [Optimering af multivariable funktioner],
)
#set heading(numbering:"1.")


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
- Perspektivér til, hvordan optimering af multivariable funktioner anvendes til at træne mo- deller inden for machine learning.

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
#outline()

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

*Hvordan kan jeg minimere kvadratsums afvigelsen ved funktioner af to variable ved hjælp af
partiel afledte?* \


- Der vil blive redegjort for begreberne funktioner af flere variable og differentation af disse med henblik på bestemmelse af globale og lokale minima og maksima. 
- Der vil blive redegjort for, matematikken bag en optimeringsalgoritme (f.eks. gradient descent, Adam eller RMSprop) samt for brugen af optimering af multivariable funktioner i machine learning.
- Der vil blive genereret data, som algoritmen kan analyseres ud fra.
- Der vil blive analyséret for, hvordan den valgte algoritme optimerer parametrene i en multivariabel model, og undersøges, hvordan dens evne til at finde en optimal model påvirkes af stigende støj i datasættet.
- Der vil blive perspektiveret til, hvordan optimering af multivariable funktioner anvendes til at træne modeller inden for machine learning.

= Metoder
= Redegørelse for multivariable funktioner
En multivariabel funktion er en funktion, der har mere end én uafhængig variabel.

== Lineær regression

== Differentation af multivariable funktioner

= Optimeringsalgoritme
Hvad er det for en specifik en

== Matematikken bag optimeringsalgoritmen
= Data
= Analysering af algoritmen
= Perspektivering
= Konklusion




= Litteraturliste
#bibliography("kilder.bib", title:none, style:"chicago-author-date")

= Bilag
