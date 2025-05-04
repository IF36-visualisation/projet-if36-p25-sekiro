# Projet IF36 - Visualisation de données  
## Groupe : Sekiro  
## Dataset : World Population Prospects (ONU)  

---  

## Données  

### Introduction 

&ensp;Nous avons choisi d’utiliser le jeu de données **“World Population Prospects”**, mis à disposition par l’**Organisation des Nations Unies** via leur site officiel : [https://population.un.org/wpp](https://population.un.org/wpp)

&ensp;Ce dataset est mis à jour tous les 2 ans environ, la version utilisée sera la dernière, celle de 2024. Plus précisément, ces documents sont édités et publiés par le **DAES** (DESA en anglais), le *Département des Affaires Économiques et Sociales* qui est un “secrétariat” (un organisme principal) de l’ONU qui produit et analyse des datasets afin de produire des rapports et aide les pays à prendre des décisions et à avoir des agendas de politiques au fait des enjeux sociétaux et économiques. Les rapports publics portent par exemple sur l’avancement des droits des femmes, de la jeunesse, des autochtones, mais aussi sur l’état et les objectifs futurs des forêts, des énergies renouvelables, de l’économie et donc aussi de la démographie.

&ensp;Ces données contiennent des projections démographiques standardisées pour l’ensemble des pays du monde, couvrant la période de **1950 à 2100**. Les données de 1950 à 2023 sont des données issues de recensement de 238 pays/régions non-autonomes. Ce dataset constitue donc une source fiable, riche, et particulièrement pertinente dans un contexte de réflexion sur l’évolution des sociétés.


### Pourquoi ce dataset ?  

- Le **caractère universel et actuel** de la problématique démographique (vieillissement, surpopulation, politiques publiques, etc.)
- L’**intérêt personnel** que nous portons aux enjeux de développement, d’écologie, et de géopolitique
- La **structuration claire** et la **profondeur historique et prospective** de ces données, qui permettent des visualisations très variées

Les fichiers sont fournis au format **CSV**, à différents niveaux de détail (mondial, par continent, par pays/sous-régions, par âge, par sexe, etc.).

### Structure des données  

#### Source  

-   Recensements nationaux officiels (1950-2023) ;
-   Enquêtes démographiques et sanitaires ;
-   Registres d'état civil (naissances/décès) ;
-   Modèles statistiques sophistiqués (pour les projections 2024-2100)

La méthodologie intègre des variables **clés** : tendances de fécondité, mortalité, migrations internationales, politiques gouvernementales et indicateurs socio-économiques.

#### Format
Le dataset propose :

-   15 fichiers CSV thématiques (population totale, fécondité, mortalité, migration, etc.)
-   4 niveaux de granularité spatiale (mondial, régional, national, urbain/rural)
-   Regroupements par tranches d'âge (découpages quinquennaux)
-   Projections selon 3 scénarios (bas/moyen/haut variant selon les politiques natalistes)
-   Ce dataset contient 84 360 observations et 42 variables. 

#### Variables principales :

-   Indicateurs démographiques bruts (population totale, par sexe et age)
-   Changement et croissance de la population (changement naturel et total, taux de croissance naturel et total ainsi que le temps de doublement de la population)
-   Naissances et fertilité (naissance, age de la mère à la procréation, taux de fécondité brut et total et le ratio h/f à la naissance)
-   Décès et mortalité (décès totaux, par sexe et age avec un focus sur la mortalité infantile) 
-   Migration (nombre net et taux de migration nette)

### Description des variables du dataset

| Colonne                      | Type               | Description                                                     | Nature    |
|-----------------------------|--------------------|-----------------------------------------------------------------|-----------|
| SortOrder                   | int                | Ordre des lignes                                                | Discrète  |
| LocID                       | int                | Identifiant unique de la localisation                           | Discrète  |
| Notes                       | string (nullable)  | Informations additionnelles                                     | Nominale  |
| ISO3_code                   | string (nullable)  | Code pays en 3 lettres ISO 3166-1 alpha-3                       | Nominale  |
| ISO2_code                   | string (nullable)  | Code pays en 2 lettres ISO 3166-1 alpha-2                       | Nominale  |
| SDMX_code                   | string (nullable)  | Code SDMX pour la localisation                                  | Nominale  |
| LocTypeID                   | int                | Type de la localisation                                         | Discrète  |
| LocTypeName                 | string             | Nom du type de localisation                                     | Nominale  |
| ParentID                    | int (nullable)     | Identifiant du parent                                           | Discrète  |
| Location                    | string             | Nom de la région/localisation                                   | Nominale  |
| VarID                       | int                | Identifiant de la variable                                      | Discrète  |
| Variant                     | string             | Type de scénario démographique                                  | Nominale  |
| Time                        | int                | Année                                                           | Discrète  |
| TPopulation1Jan             | float              | Population totale au 1er janvier                                | Continue  |
| TPopulation1July            | float              | Population totale au 1er juillet                                | Continue  |
| TPopulationMale1July        | float              | Population masculine au 1er juillet                             | Continue  |
| TPopulationFemale1July      | float              | Population féminine au 1er juillet                              | Continue  |
| PopDensity                  | float              | Densité de population (hab/km²)                                 | Continue  |
| PopSexRatio                 | float              | Ratio hommes/femmes                                             | Continue  |
| MedianAgePop                | float              | Âge médian de la population                                     | Continue  |
| NatChange                   | float              | Changement naturel de la population                             | Continue  |
| NatChangeRT                 | float              | Taux de changement naturel                                      | Continue  |
| PopChange                   | float              | Changement total de la population                               | Continue  |
| PopGrowthRate               | float              | Taux de croissance démographique                                | Continue  |
| DoublingTime                | float              | Temps de doublement de la population                            | Continue  |
| Births                      | float              | Nombre total de naissances                                      | Continue  |
| Births1519                  | float              | Naissances chez les 15-19 ans                                   | Continue  |
| CBR                         | float              | Taux brut de natalité                                           | Continue  |
| TFR                         | float              | Taux de fécondité total                                         | Continue  |
| NRR                         | float              | Taux net de reproduction                                        | Continue  |
| MAC                         | float              | Âge moyen de la maternité                                       | Continue  |
| SRB                         | float              | Ratio de masculinité à la naissance                             | Continue  |
| Deaths                      | float              | Nombre total de décès                                           | Continue  |
| DeathsMale                  | float              | Nombre de décès masculins                                       | Continue  |
| DeathsFemale                | float              | Nombre de décès féminins                                        | Continue  |
| CDR                         | float              | Taux brut de mortalité                                          | Continue  |
| LEx                         | float              | Espérance de vie à la naissance                                 | Continue  |
| LExMale                     | float              | Espérance de vie des hommes                                     | Continue  |
| LExFemale                   | float              | Espérance de vie des femmes                                     | Continue  |
| LE15                        | float              | Espérance de vie à 15 ans                                       | Continue  |
| LE15Male                    | float              | Espérance de vie des hommes à 15 ans                            | Continue  |
| LE15Female                  | float              | Espérance de vie des femmes à 15 ans                            | Continue  |
| LE65                        | float              | Espérance de vie à 65 ans                                       | Continue  |
| LE65Male                    | float              | Espérance de vie des hommes à 65 ans                            | Continue  |
| LE65Female                  | float              | Espérance de vie des femmes à 65 ans                            | Continue  |
| LE80                        | float              | Espérance de vie à 80 ans                                       | Continue  |
| LE80Male                    | float              | Espérance de vie des hommes à 80 ans                            | Continue  |
| LE80Female                  | float              | Espérance de vie des femmes à 80 ans                            | Continue  |
| InfantDeaths                | float              | Nombre de décès infantiles                                      | Continue  |
| IMR                         | float              | Taux de mortalité infantile                                     | Continue  |
| LBsurvivingAge1             | float              | Nombre d'enfants survivant jusqu'à 1 an                         | Continue  |
| Under5Deaths                | float              | Nombre de décès avant 5 ans                                     | Continue  |
| Q5                          | float              | Probabilité de mourir avant 5 ans                               | Continue  |
| Q0040, Q0040Male, Q0040Female | float           | Probabilité de mourir entre 0 et 40 ans (total, hommes, femmes) | Continue  |
| Q0060, Q0060Male, Q0060Female | float           | Probabilité de mourir entre 0 et 60 ans (total, hommes, femmes) | Continue  |
| Q1550, Q1550Male, Q1550Female | float           | Probabilité de mourir entre 15 et 50 ans (total, hommes, femmes)| Continue  |
| Q1560, Q1560Male, Q1560Female | float           | Probabilité de mourir entre 15 et 60 ans (total, hommes, femmes)| Continue  |
| NetMigrations               | float              | Migration nette (immigrants - émigrants)                        | Continue  |
| CNMR                        | float              | Taux net de migration                                           | Continue  |


---  

## Plan d’Analyse  

&ensp;Avant de plonger dans l’analyse proprement dite, il est essentiel de commencer par une étape de nettoyage des données. Cela inclut la vérification de la qualité des données, le traitement des valeurs manquantes, et la gestion des anomalies éventuelles, telles que des valeurs erronées ou des colonnes vides. Nous pourrions également simplifier le jeu de données en conservant une seule colonne pour certaines informations redondantes, comme le code pays, afin de faciliter l’analyse.

&ensp;Il est important de noter que, durant cette phase, nous pourrions rencontrer des difficultés liées à des données manquantes ou des valeurs aberrantes, particulièrement pour certains pays où l'information pourrait être incomplète. Ces problèmes seront pris en compte et traités au fur et à mesure pour garantir la fiabilité des résultats.

&ensp;Des problèmes sont déjà présents sur le dataset. Premièrement, la fiabilité des données peut être remise en question car soit sont des estimations ou des données fabriquées et non vérifiables par des autorités compétentes extérieures (les chiffres des régimes autocratiques fermés seront pris avec des pincettes {ie: Erythrée, Corée du Nord, Turkménistan}). Certains phénomènes sociaux ne sont pas expressément montrés, les normes sociales (désir d’enfants, polygamie) ou les pratiques discriminatoires (avortements sélectifs) ne sont pas quantifiés. Des données manquent aussi cruellement pour une bonne analyse par exemple : 17 pays n’ont pas fourni de données récentes sur les avortements ou mortalité maternelle (ex : Arabie Saoudite, Somalie), les migrations climatiques ne sont pas isolées des autres flux. Enfin les projections, sans leur enlever toute légitimité, supposent une continuité des tendances, ignorant les ruptures (guerres, innovations médicales, effondrements écologiques) et modélisant des relations simplistes (ex : baisse linéaire de la fécondité avec l’éducation).

&ensp;Une fois cette étape de nettoyage et de sensibilisation effectuée, nous pourrons commencer l’analyse proprement dite et explorer les tendances démographiques mondiales.

&ensp;Ce jeu de données permet d’étudier en profondeur les dynamiques démographiques mondiales, passées et futures. Notre objectif principal est d’en extraire des tendances visuelles à l’échelle globale, régionale et nationale, et de les mettre en relation avec des enjeux actuels (vieillissement, natalité…).

### Questions d’analyse principales  

&emsp;**1.  Dynamiques démographiques différentielles**

 &ensp; L’objectif de cette partie sera principalement d’observer les trajectoires démographiques historiques (1950-2023) et projetées (2024-2100) à travers les trois scénarios SSP. Il s’agira à la fois de visualiser par région l’évolution démographique mais aussi de visualiser les 3 scénarios du futur démographique (SSP1, SSP2, SSP3). On se servira de line charts multiples pour chercher des croissances et décroissances.
 
 &ensp; Cette question fera aussi appel à la transition démographique, nous prendrons trois pays symboliques de trois phases différentes (post-transition, inter-transition, et le vieillissement post-transition) pour comparer et observer ce processus face aux modèles de transition démographique.
 
 &ensp; Ainsi pour finir cette partie, nous nous intéresserons aux migrations. Cette section analysera les migrations comme variable d’ajustement aux déséquilibres démographiques. Nous avons accès au nombre net de migrants, il serait donc intéressant de voir si des pôles d’immigration et d’émigration se dégagent, avec pourquoi pas un diagramme de Sankey. Cette analyse permettra de repérer les régions les plus attractives, ainsi que celles qui subissent une fuite importante de leur population, avec des dynamiques parfois durables et parfois cycliques et ce à cause des différents facteurs sociaux, écologique, mais aussi des différentes politiques migratoires.
  

&emsp;**2.  Natalité, fécondité et Santé**

  &ensp;L’un des piliers de la démographie est la natalité. Nous chercherons à comprendre comment elle a évolué au cours des 70 dernières années en analysant le Total Fertility Rate (TFR). Nous examinerons également la corrélation entre la mortalité infantile et la fécondité, en croisant ces données avec celles des grossesses adolescentes.
  
 &ensp; Enfin, nous explorerons si une relation existe entre la fécondité et le développement économique, en utilisant des indices socio-économiques pour affiner l’analyse.
 
&ensp;  Nous chercherons à analyser l’évolution du taux de mortalité infantile au fil des décennies, indicateur clé du niveau de développement sanitaire d’un pays. Cette mesure permet d’évaluer les progrès accomplis dans l’accès aux soins, à l’eau potable, à la nutrition, et plus globalement aux services essentiels pour les jeunes enfants. En suivant cette variable, il est possible de mesurer directement l’efficacité des systèmes de santé dans différentes régions du monde.

 &ensp; L’analyse portera également sur la corrélation entre espérance de vie et développement socio-économique, en croisant les données avec des indices comme le PIB par habitant ou l’IDH. Nous mettrons en lumière les progrès réalisés dans certaines régions, mais aussi les inégalités encore très marquées, notamment en Afrique subsaharienne ou dans certaines zones en conflit.
  

&emsp;**3.  Différences sexuelles**

 &ensp; Nous nous intéresserons ensuite aux disparités entre les sexes en termes de démographie. Nous comparerons les espérances de vie des hommes et des femmes dans chaque pays, en mettant en avant les tendances régionales. Cela nous permettra d’identifier les écarts d’espérance de vie et d’analyser s’ils se réduisent ou s’amplifient au fil du temps.
 
 &ensp; Nous visualisons comment la proportion d’hommes et de femmes varie selon les tranches d’âge et comment cette répartition évolue dans le temps.Cette analyse nous aidera à comprendre à quel moment les écarts deviennent significatifs (vieillissement, surmortalité masculine, etc.). Cela permettra d’identifier les régions où l’équilibre démographique par sexe est le plus menacé ou au contraire le plus stable.

  
&emsp;**4.  Structure par âge et dividende démographique**

 &ensp; Nous chercherons à comprendre à quel moment une population entre dans une phase de dividende démographique, lorsque la part de la population en âge de travailler (15–64 ans) dépasse largement celle des jeunes (0–14 ans) et des personnes âgées (65+). L’analyse portera sur l’évolution de la structure par âge au cours du temps, afin d’identifier les pays qui bénéficient ou bénéficieront d’une fenêtre démographique favorable à la croissance et au développement.


&emsp;**5.  Vieillissement de la population**

&ensp;  Dans cette partie, nous nous intéresserons à l’évolution de la proportion de la population âgée de 65 ans et plus, à l’échelle mondiale, régionale et nationale. L’objectif sera d’identifier les pays confrontés à un vieillissement accéléré de leur population, et d’observer la vitesse à laquelle ce phénomène progresse selon les régions.

&ensp;  Nous visualiserons également les rapports de dépendance, en comparant la population active (15–64 ans) aux populations dépendantes (0–14 ans et 65+), afin d’évaluer les pressions futures sur les systèmes de retraite, de santé et de solidarité intergénérationnelle.


&emsp; **6.  Croissance démographique des pays émergents**

&ensp;Dans cette partie, nous chercherons à identifier les pays qui connaîtront une croissance démographique particulièrement rapide au cours du XXIe siècle. L’objectif est de mettre en évidence les États où la population pourrait doubler voire tripler dans les prochaines décennies, en s’appuyant sur les projections à long terme. Cette analyse met en lumière les futurs défis auxquels ces pays devront faire face, notamment en matière d’infrastructures, d’éducation et de gestion des ressources.


&emsp; **7.  Urbanisation et population rurale**

 &ensp; L’objectif de cette section sera d’étudier les dynamiques de population entre les milieux urbains et ruraux. À l’aide des données disponibles, nous analyserons l’évolution de la proportion de la population vivant en zone urbaine, par pays et par région, entre 1950 et 2100.
 &ensp; Nous chercherons également à identifier les pays dans lesquels la croissance urbaine est la plus rapide, notamment via l’émergence de grandes métropoles (mégapoles).
