Introduction : Dans le contexte donné, le fichier de données "data_imc.txt" contient des informations sur la santé de 60 individus aux États-Unis, supposés représentatifs de la population américaine. L'étude se concentre sur le surpoids, l'obésité et leurs conséquences sur la santé, en utilisant l'Indice de Masse Corporelle (IMC) comme norme pour évaluer les risques associés. L'Organisation Mondiale de la Santé (OMS) a défini des intervalles d'IMC, classant les individus comme suit :
- IMC < 25 : Poids normal
- 25 ≤ IMC < 30 : Surpoids
- IMC ≥ 30 : Obésité

Un tour de taille dépassant 94 cm pour les hommes et 80 cm pour les femmes est également considéré comme un prédicteur des maladies cardiaques et du diabète de type 2. Les variables du jeu de données comprennent SEXE, AGE, TAILLE, TTAILLE, CHOL et IMC.

Transformations et Créations de Variables :
   (a) Créez une nouvelle variable notée IMCC en discrétisant l'IMC en trois classes selon les normes de l'OMS.
   (b) Convertissez le taux de cholestérol de mg/dl à g/l.
   (c) Effectuez les transformations nécessaires pour les variables qualitatives, en veillant à utiliser des libellés appropriés.

Étude Descriptive Univariable :
Effectuez une étude descriptive de toutes les variables du jeu de données en utilisant les variables transformées. Décrivez la distribution de chaque variable à l'aide des outils appropriés (résumés numériques et graphiques).

Niveau de Cholestérol :
Enquêtez pour savoir si la population étudiée a un taux de cholestérol strictement supérieur à la recommandation maximale de 2g/l. Répondez à l'aide d'un test unilatéral, avec l'argument 'alternative = greater' de R.

Liaisons entre les Variables :
   (a) Déterminez si l'IMC (en classes) dépend du sexe.
   (b) Analysez si le tour de taille augmente avec l'âge.
   (c) Vérifiez si le taux de cholestérol moyen est le même pour les deux sexes.
   (d) Explorez la relation entre l'IMC (en classes) et le tour de taille, en précisant quelles classes diffèrent. Supposez que la variable TTAILLE suit une loi normale dans chaque classe d'IMC.

Conclusion de l'Étude : Résumez les principales conclusions de l'étude, fournissez une synthèse concise et mentionnez d'éventuelles limitations quant à la fiabilité des résultats.

------------- ENGLISH VERSION -------------

Introduction:
In the given context, the data file "data_imc.txt" contains health information for 60 individuals in the United States, assumed to be representative of the American population. The study focuses on overweight, obesity, and their consequences on health, using the Body Mass Index (BMI) as a standard for assessing associated risks. The World Health Organization (WHO) has defined BMI intervals, classifying individuals as follows:
- BMI < 25: Normal weight
- 25 ≤ BMI < 30: Overweight
- BMI ≥ 30: Obesity

A waist circumference exceeding 94 cm for men and 80 cm for women is also known as a predictor of heart diseases and type 2 diabetes. The variables in the dataset include SEX, AGE, HEIGHT, WAIST, CHOL, and BMI.

Variable Transformations and Creations:
   (a) Create a new variable denoted as BMI_CLASS by discretizing BMI into three classes using the specified WHO standards.
   (b) Convert the cholesterol level from mg/dl to g/l.
   (c) Make necessary transformations for qualitative variables, ensuring appropriate labels.

Univariate Descriptive Study:
Conduct a descriptive study of all variables in the dataset using the transformed variables. Describe the distribution of each variable using appropriate tools (numerical summaries and graphics).

Cholesterol Level:
Investigate whether the studied population has a cholesterol level strictly above the recommended maximum of 2g/l. Answer using a one-sided test, with the R argument 'alternative = greater.'

Relationships Between Variables:
   (a) Examine if BMI_CLASS is dependent on gender.
   (b) Analyze if waist circumference increases with age.
   (c) Verify if the average cholesterol level is the same for both genders.
   (d) Explore the relationship between BMI_CLASS and waist circumference, specifying differing classes. Assume the variable WAIST follows a normal distribution within each BMI_CLASS.

Study Conclusion: Summarize key findings from the study, providing a concise synthesis and mentioning any potential limitations in the reliability of the results.
