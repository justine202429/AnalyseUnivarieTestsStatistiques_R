#Importation des données 
setwd("/Users/justinekosinski/Desktop/MIAGE/L3/S1/Statistiques/Projet1")
data_imc_TP2_groupe1=read.table("data_imc_TP2_groupe1.txt",header=TRUE) 
is.data.frame(data_imc_TP2_groupe1)
View(data_imc_TP2_groupe1)
attach(data_imc_TP2_groupe1)

#Question 2
#(a) IMCC correspond à la variable IMC discrétisée en trois classes en utilisant les standards de l’OMS
IMCC <- cut(data_imc_TP2_groupe1$IMC, breaks = c(-Inf, 25, 30, Inf), labels = c("Corpulence normale IMC<25", "Surpoids 25<=IMC<30", "Obésité IMC >=30"))
IMCC

#(b) Transformation appropriée pour obtenir le taux de cholestérol en g/l
CHOL <- data_imc_TP2_groupe1$CHOL / 100
CHOL

#(c) La variable sexe est de type integer, or sexe est une qualitative  
# donc on va transformer en "factor" ces variables qualitatives
SEXE=factor(data_imc_TP2_groupe1$SEXE,labels=c("Homme","Femme"))
SEXE

#Question 3 : Analyse univariée 
#Variables qualitatives 
#Commençons par la variable "SEXE"
table(SEXE) # tableau de distribution en effectifs de la variable sexe
prop.table(table(SEXE)) # tableau de distribution en fréquences
pie(prop.table(table(SEXE)),main="Graphique circulaire de la variable  \n sexe",
    col=c("mintcream","pink"))
#La répartition des sexes dans l'échantillon est équilibrée, avec 50% d'hommes et 50% de femmes.
#Cela indique une représentation égale des deux genres au sein de l'échantillon
# ce qui permet de prendre en compte les caractéristiques des deux groupes de manière équilibrée.

#Passons à la variable "IMCC"
table(IMCC)
prop.table(table(IMCC))
barplot(prop.table(table(IMCC)),main="Répartition de la population américaine par \n interprétations (d'après l'OMS) d'intervalles d'Indice de Masse Corporelle (IMC)",
        ylab="Fréquence relative", xlab="Interprétation d'intervalles d'IMC",col=c("lemonchiffon","peachpuff","rosybrown1"))
#La majorité des individus se situent dans la catégorie "Corpulence normale" (IMC<25) : ils représentent 50% de la population américaine.
#35% de cette même population est considérée en "Surpoids" avec un IMC compris entre 25 et 30 (exclu).
#Les personnes obèses sont peu nombreuses : environ 15% de la population américaine.

#Variables quantitatives continues
#On étudie d'abord la variable "AGE"
par(mfrow=c(1,2))
#Essentiel des résumés numériques
summary(AGE)
cv=sd(AGE)/mean(AGE)# coefficient de variation : permet de mesurer la dispersion
#Histogramme
hist(AGE,freq=FALSE,xlab="Age (en années)",
     ylab="Densité de fréquence",main="Histogramme de la variable age")
#Boîte à moustaches
boxplot(AGE,xlab="Population américaine",ylab="Age (en années)",
        main="Boîte à moustaches de l'âge")
#On peut voir que la médiane est inférieure à la moyenne, ce qui suggère une légère 
#asymétrie positive, on remarque également une concentration autour des âges de 29 et 32 ans 
#dans la distribution. Cela signifie que quelques individus ont des âges élevés, ce qui fait 
#augmenter la moyenne par rapport à la médiane. Ce que nous confirme la boîte à moustaches.
#La plage d'âges va de 12 à 75 ans,ce qui montre la diversité de l'âge dans votre échantillon. 
#Toutes les personnes de notre échantillon, ont en moyenne 35.52 ans. La médiane indique que la 
#moitié des individus ont un âge inférieur ou égal à 32.5 ans, tandis que l'autre moitié a un âge 
#supérieur. Le coefficient de variation, égal à 0.38 (>0.25) révèle que l'age des individus n'est 
#pas fortement dispersées par rapport à la moyenne, cependant il existe tout de même une certaine variabilité. 

#Pour la variable "TAILLE" : 
#Essentiel des résumés numériques
summary(TAILLE)
cv=sd(TAILLE)/mean(TAILLE)# coefficient de variation : permet de mesurer la dispersion
#Histogramme
hist(TAILLE,freq=FALSE,xlab="Taille (en cm)",
     ylab="Densité de fréquence",main="Histogramme de la variable taille")
#Boîte à moustaches
boxplot(TAILLE,xlab="Population américaine",ylab="Taille (en cm)",
        main="Boîte à moustaches de la taille")
#On constate que la médiane est proche de la moyenne, ce qui suggère une distribution relativement 
#symétrique des tailles avec quelques individus présentant des tailles extrêmes.La plage des tailles 
#va de 144.8 cm à 193.5 cm, montrant une variabilité considérable dans les données. Le coefficient de
#variation étant tres faible (0.06) indique une distribution de données relativement homogène où la 
#plupart des valeurs sont proches de la moyenne et peu de valeurs s'éloignent de manière significative 
#de cette moyenne.La moyenne de taille de la population américaine est de 167.2 cm. On remarque que 25% 
#de la population américaine mesure une taille inférieure ou égale à 160.2 cm.

#Regardons maintenant la variable "TTAILLE"
#Essentiel des résumés numériques
summary(TTAILLE)
cv=sd(TTAILLE)/mean(TTAILLE)# coefficient de variation : permet de mesurer la dispersion
#Histogramme
hist(TTAILLE,freq=FALSE,xlab="Tour de taille (en cm)",
     ylab="Densité de fréquence",main="Histogramme de la variable tour de taille")
#Boîte à moustaches
boxplot(TTAILLE,xlab="Population américaine",ylab="Tour de taille (en cm)",
        main="Boîte à moustaches de la tour de taille") 
#La distribution du tour de taille est étendue, avec une variabilité considérable dans les 
#données. Vous pouvez voir que la moyenne est légèrement supérieure à la médiane, suggérant 
#une légère asymétrie positive. La concentration de la population autour des valeurs proches 
#de la médiane montre une cohérence relative, mais il y a tout de même des individus avec des 
#mesures de tour de taille plus éloignées de la moyenne, ce qui explique le coefficient de 
#variation (0.15). L'histogramme et la boîte à moustaches, nous permette de mieux visualiser 
#cette distribution. En effet, on constate que la moustache supérieure est plus longue que la 
#moustache inférieure. La moyenne du tour de taille est d'environ 88.07 cm. 75% des américains 
#a un tour de taille inférieur ou égal à 98.22 cm. 

#Terminons par la variable "CHOL"
#Essentiel des résumés numériques
summary(CHOL)
cv=sd(CHOL)/mean(CHOL)# coefficient de variation : permet de mesurer la dispersion
#Histogramme
hist(CHOL,freq=FALSE,xlab="Taux de cholestérol (en g/L)",
     ylab="Densité de fréquence",main="Histogramme de la variable taux de cholestérol")
#Boîte à moustaches
boxplot(CHOL,xlab="Population américaine",ylab="Taux de cholestérol (en g/L)",
        main="Boîte à moustaches du taux de cholestérol") 
#On identifie 1 valeur extrême du côté élevé (12.52 g/L) de la distribution du taux de cholestérol. 
#La moyenne du taux de cholestérol qui vaut 3.453 g/L est influencée par la valeur extrême et est 
#légèrement plus élevée que la médiane, ce qui suggère une distribution légèrement asymétrique positive. 
#En d'autres termes, la valeur extrême tire la moyenne vers le haut. La population étudiée présente une 
#diversité importante en termes de taux de cholestérol. Le cv égal à 0.8 indique que les données de taux de 
#cholestérol dans notre échantillon sont dispersées sur une plage relativement large.

#Question 4 : Test unilatéral
# Niveau de signification (alpha)
alpha <- 0.05  
resultat_test <- t.test(CHOL, alternative = 'greater', mu = 2)
cat("Statistique de test :", resultat_test$statistic, "\n")
cat("Valeur-p :", resultat_test$p.value, "\n")
if (resultat_test$p.value < alpha) {
  cat("La population a une proportion significativement plus élevée de personnes avec un taux de cholestérol supérieur à 2 g/L (p < alpha).\n")
} else {
  cat("Il n'y a pas suffisamment de preuves pour conclure que la population a une proportion significativement plus élevée de personnes avec un 
      taux de cholestérol supérieur à 2 g/L (p >= alpha).\n")
}

#Question 5 
par(mfrow=c(1,1))
#(a) L’IMCC dépend-il du sexe ?
#Tableau de contingence du couple (IMCC, sexe)
tableauIS = table(IMCC, SEXE)
tableauIS
addmargins(tableauIS)
#Tableau des profils-lignes : on a plutôt envie de comparer comment l'IMC varie en fonction du sexe  
round(prop.table(tableauIS,1),digits=3)
#60% de la population américaine ayant une corpulence normale (IMC<25) sont des femmes

#Diagrammes en colonnes
barplot(t(prop.table(tableauIS,1)),beside=TRUE,col=c("mintcream","pink"),
        main="Distributions conditionnelles du sexe sachant l'IMC",xlab= "IMCC",ylab="Fréquence relative",
        legend.text=TRUE)
#On constate qu'il y a des différences notables dans la répartition des catégories d'IMC (corpulence normale, 
#surpoids, obésité) entre les hommes et les femmes. La catégorie "Surpoids" comporte une proportion plus élevée 
#d'hommes (57%) par rapport aux femmes (43%). L'obésité est plus prévalente chez les hommes, en effet 67% de la 
#population étant obèse sont des hommes. Les femmes quant à elles représentent 60% de la population américaine 
#ayant une corpulence normale.Cela incite à penser que l'IMC dépend du sexe. 

#Test du Khi-deux d'indépendance
#H0 : indépendance de l'IMC et du sexe
#H1 : pas indépendance (= les variables sont liées)
#Conditions de validité : tous les effectifs attendus sous H0 (= e_ij) doivent dépasser 5. Ce n'est pas le cas ici, 
#en effet on remarque un effectif = 3 mais comme nous n'avons pas d'alternative, nous faisons quand même le test du 
#khi-deux d'indépendance. 
khi2IS=chisq.test(tableauIS)
khi2IS
#Conclusion du test : la p-valeur est supérieure à 5 % donc on ne rejette pas H0. Au risque de 5 %, on peut conclure 
#qu'il n'y a pas de liaison entre l'IMC et le sexe. Le tableau des profils-lignes indique la distribution de l'IMC parmi 
#les hommes et les femmes, montrant que, par exemple, un pourcentage plus élevé d'hommes est en surpoids par rapport aux 
#femmes. Cela suggère une association apparente entre l'IMC et le sexe. Cependant, le test du chi-deux examine si cette 
#association est statistiquement significative ou si elle pourrait simplement être due au hasard. En d'autres termes, bien 
#que le tableau des profils-lignes montre des différences apparentes, ces différences ne sont peut-être pas suffisamment 
#importantes pour être statistiquement significatives dans le contexte de votre échantillon. Cela peut être dû à la variabilité 
#naturelle des données ou à la taille de l'échantillon.

#(b) Le tour de taille augmente-t-il avec l’age?
#Nuage de points
plot(TTAILLE,AGE,main="Nuage de points", xlab="Tour de taille (cm)",
     ylab="Age (en années)")

#Coefficient de corrélation linéaire empirique (arrondi à deux décimales)
round(cor(TTAILLE,AGE),digits=2)
#Le nuage semble à peu près réparti autour d'une droite croissante. Il semble que lorsque l'age augmente, le tour de 
#taille augmente.
#Un coefficient de corrélation de 0,55 suggère qu'il y a une relation positive, mais modérée, entre les deux variables.
#La corrélation indique que cette relation n'est pas due au hasard.

#Test statistique
#H0 : absence de liaison linéaire entre le tour de taille et l'âge.
#H1 : liaison linéaire qu'on peut aussi écrire : rho différent de 0.
#Conditions de validité : variables aléatoires X et Y gaussiennes, pas trop vrai ici mais test valide quand même, 
#car n = 60 grand (condition : n supérieur à 30)
#nom : test du coefficient de corrélation linéaire
cor.test(TTAILLE,AGE)

#Conclusion du test : la p-value est de 6.112e-06, on rejette H0. Ce qui indique une relation statistiquement significative 
#entre le tour de taille et l'âge dans notre échantillon. On conclut donc, au risque de 5 % de se tromper que ces deux 
#variables sont corrélées. Ainsi, sans surprise, avec l'âge il y a une tendance à l'accumulation de graisse autour de la 
#taille, ce qui peut avoir des implications pour la santé. En moyenne, les personnes plus âgées ont tendance à avoir un tour 
#de taille plus grand que les personnes plus jeunes.

#(c) Le taux de cholestérol est-il le meme en moyenne pour les deux sexes?
#Boîtes à moustaches juxtaposées
#attach(data_imc_TP2_groupe1)
boxplot(CHOL~SEXE,main="Boîtes à moustaches juxtaposées \n 
        du taux de cholesterol en fonction du sexe")

#Moyennes par groupe
moycond=tapply(CHOL,SEXE,mean)
moycond

#Variances par groupe
tapply(CHOL,SEXE,var)
points(moycond,col="red",pch=4,cex=1) #on rajoute les moyennes conditionnelles aux bàm juxtaposées

#La moyenne et la variance du taux de cholesterol chez les hommes sont bien plus élevés que chez les 
#femmes. Cela suggère une différence significative entre les deux groupes. On voit que le troisieme 
#quartile du taux de cholesterol des femmes est égal au premier quartile du taux de cholesterol des hommes, 
#ce qui signifie que 75% des femmes ont des taux de cholesterol qui s'étendent jusqu'au niveau où se situent 
#les taux de cholesterol minimums que touchent 75% des hommes. Les deux distributions présentent des valeurs 
#extrèmes (dans les hauts taux de cholesterol).

#Test statistique 
#On veut tester H_0 : mu_F=mu_H contre H_1 : mu_F différent de mu_H
#On va utiliser le test de Student ou le test de Welch
#Le test de comparaison des espérences de Student necessite l'égalité des variances donc on commence par tester 
#cette égalité 
#Conditions de validité : loi normale (= gaussienne) dans chaque groupe
# ou n_F et n_H grand (supérieurs à 30 pour fixer les idées)
#Ce sont des taux de cholesterol donc pas gaussien, ce que l'on peut vérifier par un graphique quantile-quantile normal
par(mfrow=c(1,2)) # pour avoir les deux histogrammes côte à côte
tapply(CHOL,SEXE,qqnorm)
table(SEXE)
#On voit que les distributions ne sont pas gaussiennes donc il faut avoir des effectifs suffisants pour que le test soit
#valide. C'est le cas ici, ce que l'on vérifie avec le tableau de distribution en effectifs  
#Comme les distributions ne sont pas normales et qu'on utilise le fait que les deux effectifs sont grands, on ne 
#peut pas faire de test pour comparer les variances (le test de Fisher n'est pas valide). On fait donc directement 
#le test de Welch avec variances inégales.
t.test(CHOL~SEXE,var.equal=FALSE)
#On rejette l'égalité des moyennes, et à l'aide des "moycond" calculées plus haut, on conclut que les taux de cholesterol 
#des hommes sont en moyenne plus élevés que ceux des femmes (4.719 versus 2.186333 g/L)

#(d) Vérifier que l'IMC (en classes) et le tour de taille sont liés. Si oui, préciser quelles classes diffèrent. On supposera pour cette 
#question que la variable TTAILLE suit une loi normale dans chacune des classes d'IMC.
#Boîtes à moustaches juxtaposéeef
par(mfrow=c(1,1))
boxplot(TTAILLE~IMCC,main="Boîtes à moustaches juxtaposées \n 
        des classes d'IMC en fonction du tour de taille")

#Moyennes par groupe
moycond=tapply(TTAILLE,IMCC,mean)
moycond

#Variances par groupe
tapply(TTAILLE,IMCC,var)
#La variance empirique est beaucoup plus importante dans le groupe des corpulences normales donc plus grande dispersion dans ce groupe. 
points(moycond,col="red",pch=4,cex=1) #on rajoute les moyennes conditionnelles aux bàm juxtaposées

#Les résultats montrent clairement que les moyennes du tour de taille varient significativement entre les différentes classes d'IMC, ce qui 
#suggère que le tour de taille est lié à l'IMC. Les variances du tour de taille varient également entre les classes d'IMC, ce qui indique que
#la dispersion des données de tour de taille peut être différente dans chaque classe. Les obèses ont des tours de taille bien plus élevés que 
#les personnes en surpoids qui à leur tour ont des tours de taille plus élevés que les personnes en corpulence normale. On peut voir sur les 
#boites à moustaches juxtaposées que 75% des personnes ayant une corpulence normale ont des tours de taille qui n’atteignent pas le tour de taille 
#minimum qui touchent 75% des personnes en surpoids. Ces memes personnes ont des tours de taille qui n’atteignent pas le tour de taille minimum
#qui touchent 75% des obèses. En effet, le 3e quartile des corpulences normales est inférieur au 1er quartile des surpoids. Meme chose pour le 3e 
#quartile des surpoids qui est inférieur au 1er quartile des obèses. On observe une valeur extreme chez les obeses. La dispersion des salaires des 
#obèses est très faible (mais il faut dire qu'ils ne sont pas très nombreux). 

#Test statistique : test de l'analyse de variance car la variable qualitative a plus de 2 modalités (3 ici)
#H0 : mu_1=mu_2=mu_3 contre H1 : au moins deux moyennes diffèrent. 
#Condition de validité : loi gaussienne pour la variable quantitative dans chaque groupe, c'est le cas. 
#2 tests possibles pour comparer les moyennes : le test classique de l'analyse de variance ou sa version modifiée en cas de variances inégales  
#pour choisir quel test faire : on teste l'homoscédasticité = homogénéité des variances par groupe. Test de Brown-Forsythe : H0 : sigma_1^2=sigma_2^2=sigma_3^2
library(car)    # nécessite le package "car"
leveneTest(TTAILLE,IMCC)
# on ne rejette pas l'égalité des variances (p-valeur supérieur à 0.05)
# il faut donc utiliser la variante de l'analyse de la variance pour variances égales
oneway.test(salaire~stat_pro,var.equal=TRUE)
#p < 0.05 donc on rejette H0 et on conclut que les moyennes diffèrent globalement
#Test LSD (pas d'ajustement du risque alpha)
pairwise.t.test(TTAILLE,IMCC,p.adjust.method= "none",pool.sd=TRUE)
#On conclut ici que les trois moyennes sont différentes deux à deux car toutes les p-valeurs sont inférieures à 0.05 et en s'aidant des valeurs des moyennes empiriques, 
#on peut conclure à l'ordre suivant : mu_N < mu_S < mu_O
#C'est-à-dire que les tours de taille des obèses sont significativement plus élevés que ceux des personnes en surpoids qui sont significativement plus élevés que ceux 
#des personnes ayant des corpulences normales. 
