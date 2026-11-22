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
  - Redegør for matematikken bag en optimeringsalgoritme (f.eks. gradient descent, Adam eller RMSprop) samt for brugen af optimering af multivariable funktioner i machine learning.
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
== Matematik 
- Gør brug af (funktions)modeller
- Differentation
- Er der parameteranalyse?
- grafer 
- numerisk / analytisk tilgang

== Informatik
- Python og program ift. algoritmer
- Overvejelser af hvad jeg vil måle og hvordan er det "godt"?
- Genering af data 
- Iterativ process / loop
- Visualisering af optimeringen i 2 forskellige måder
- Tuning af parametre
- 

= Redegørelse for funktioner af flere variable
En multivariabel funktion er en funktion, eller en funktion af flere variable, er funktioner der har mere end én uafhængig variabel. Multivariable funktioner har således 3 dimensioner i stedet for de to man typisk kender fra funktioner med en variabel. 

== Lineær regression
Til at starte med når vi arbejder med funktioner af en variabel 
- sammenhæng mellem variable, regression(smodel), modellens afvigelser fra observede data
blød folk op til differentiation, opvarminng f(x,y)=z

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
Gradient Descent er den mest basale og mest anvendte optimeringsalgortime, derfor er den en god start (forklar mere uddybende).
- Inkluder f(x,y) = x^2 + y^2 som eksempel, og forklar hvordan gradienten bruges til at finde minimum.
- Vis matematikken og kobl det på mindste kvadrats metode, og hvordan man kan bruge gradient descent til at finde minimum af kvadratsums afvigelsen. 
- kvadratssums afvigelsen som loss funktion

== Adam
- Forklar hvordan Adam optimering fungerer og hvorfor det er en forbedring i forhold til Gradient Descent.

== Hvorfor er optimering vigtigt i machine learning
- Forklar at optimering er vigtigt i machine learning, fordi det bruges til at finde de parametre, der giver den bedst mulige model ud fra store mængder data.
- Det er ikke muligt med analytisk optimering, når der er mange variable, derfor er numerisk optimering nødvendig.


= Data
- Skriv om hvordan data genereres, og hvordan det kan bruges til at analysere algoritmen.
- Henvis til bilag hvor koden til data generering er inkluderet.
- Hvis hvordan jeg tilføjer støj til data

= Analysering af algoritmen
Introduktion til hvordan og hvilke algoritmer jeg vil undersøge, hvordan jeg vil lægge vægt på forskellige parametre, og hvordan jeg vil analysere algoritmen.
- Skrive om hvilken model som algoritmen skal optimere, andengrads og/eller flere?
- Tabsfunktionen, hvordan beregnes den, og hvorfor er det netop denne som skal minimeres? (skriver jeg hellere om dette i redegørelsen for optimeringsalgoritmen?)
- Kort om algoritmens hvilke startværdier der anvendes og med hvilken learning rate samt hvor mange iterationer der køres.
- Vurderingskriterier for algoritmens performance, f.eks. hvor hurtigt den konvergerer, og hvor tæt den kommer på det globale minimum.
- vurdering af: hvor tæt på den originale model kommer algoritmen
- vurdering af: hvor goft algoritmen finder minimum af tabsfunktionen, og forklar differencen

== Optimering uden støj
- Vis hvordan algoritmen optimerer parametrene i en multivariabel model uden støj i datasættet.
- inkluder grafisk repræsentation af hvordan algoritmen optimerer parametrene.
* optimeringen* 
- genering af data ud fra kendt matematisk model
- startværdier, learning rate, antal iterationer
- optimeringsprocess, hvordan tilpasser algoritmen sig?
- undersøg om algoritmen nærmer sig minima og hvor hurtigt den konvergerer. Finder den de originale parametre?
- Grafisk repræsentation "Vis både modellens tilpasning til datapunkterne og algoritmens bevægelse mod minimum i tabsfunktionen." - chatgpt
- Vis, modellens tilpasning til datapunkterne og algoritmens bevægelse mod minimum i tabsfunktionen.

== Optimering med stigende støj
- Analyser hvordan algoritmen optimerer parametrene i en multivariabel model, og undersøg hvordan dens evne til at finde en optimal model påvirkes af stigende støj i datasættet.
- Sammenlign med hvordan den opførte sig uden støj.
- hav grafisk repræsentation af hvordan støj påvirker optimeringen.
- gør det samme som under "optimeringen" men med forskellige støjniveauer, og undersøg hvordan algoritmen opfører sig.
- kør flere gange med samme støjniveau, og undersøg om algoritmen finder det samme minimum hver gang. Så sætter jeg ikke alle penge på et støjdatasæt, men bliver mere videnskablig

== Optimering med forskellige parametre af algoritmen
- Undersøg hvordan algoritmens evne til at finde en optimal model påvirkes af forskellige startværdier, learning rates og antal iterationer. Learning rate er dog den der har mest direkte sammenhæng med matematikken.

= Perspektivering af
Vi har undersøgt at algoritmer bygger på mindste kvadrats metoden, og hvorfor netop det er nemt og hurtigt at bruge. Men i virkeligheden er machine learning og optimeringsalgoritmer
langt mere konplicerede end bare at minimere kvadratsummen på et generet datasæt, med eller uden støj.
Optimering ved machine learning såsom billedgenkendelse, deep learning, sprogbehandling eller generativ AI, er langt mere kompliceret.
Der er flere tusinde parametre som skal optimeres samtidig med at modellen skal være god til at tilpasse sig ny data. 
Der skal altså være balance mellem optimering og generalisering.
- * Hav fokus på at vende tilbage til multivariable funktioner, relevans*

== Machine learning model
Kort forklaring af (muligvis ikke nødvendig):
- Machine learning har mange parametre 
- Modellen bruger parametre til at lave forudsigelser ud fra inputdata
- Hvad tabsfunktion gør
- Bruger partielle afledte til at justere parametrene 

== Datamængder og kompleksitet
- Forskellen  på mit forsøg og store modeller mere konkret. Giv den røde tråd; store datamængder
til store modeller såsom deep learning der er mindste kvadrat metoden ikke tilstrækkelig.
- Hvorfor er det på nogle modeller bedre at finde godt lokalt minimum fremfor globalt?
- Kom ind på at mange parametre med begrænset eller støjende data  fører til dårligere model på ny data
samt hvorfor det et issue, mht at den skal være god til at generalisere hvis den får ny data.
Store og variede datasæt reducerer faktisk risiko for overfitting da det er sværere at generalisere
- Mindste kvadraters metode er ikke utilstrækkelig på store datamængder, men til mere komplekse machine learning modeller kræver andre og mere fleksible tabsfunktioner end kvadratsummen.

== Overfitting og generalisering 
- Hvordan er dette (ikke) et problem ved få parametre sammen ift. større modeller til fx billedgenkendelse?
-  Hvad er forskellen og vigtigheden af balancen?
- Hvorfor er generalisering afgørende i machine learning?

== Lokale og globale minima
- Hvorfor kan tabsfunktioner være i ml være komplekse?
- Saddelpunkter ift. lokalt/golbalt minima

== Undgåelse af overfitting
- Hvordan undgås det?
-"Regularisering som en ændring af tabsfunktionen. Eventuelt early stopping." - chatGPT forslag, mmeh?

== Hvorfor er optimering så egentlig vigitg?
- Opsummering af hvorfor optimering ik er ens betydende med god model 
- Forklaring hvorfor det stadig er vigtigt og "the backbone" af machine learning
- Optimering er nødvendig, typsik første skridt med god model
- Optimering $eq.not != $ god model
- Optimering er grundlaget for læring

= Konklusion




= Litteraturliste
#bibliography("kilder.bib", title:none, style:"chicago-author-date")

= Bilag
