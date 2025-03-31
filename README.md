# Projet IF36 - Visualisation de données  
## Groupe : Sekiro  
## Dataset : World Population Prospects (ONU)  

---  

## Données  

### Introduction 

Nous avons choisi d’utiliser le jeu de données **“World Population Prospects”**, mis à disposition par l’**Organisation des Nations Unies** via leur site officiel : [https://population.un.org/wpp](https://population.un.org/wpp)

Ce dataset est mis à jour tous les 2 ans environ, la version utilisée sera la dernière, celle de 2024. Plus précisément, ces documents sont édités et publiés par le **DAES** (DESA en anglais), le *Département des Affaires Économiques et Sociales* qui est un “secrétariat” (un organisme principal) de l’ONU qui produit et analyse des datasets afin de produire des rapports et aide les pays à prendre des décisions et à avoir des agendas de politiques au fait des enjeux sociétaux et économiques. Les rapports publics portent par exemple sur l’avancement des droits des femmes, de la jeunesse, des autochtones, mais aussi sur l’état et les objectifs futurs des forêts, des énergies renouvelables, de l’économie et donc aussi de la démographie.

Ces données contiennent des projections démographiques standardisées pour l’ensemble des pays du monde, couvrant la période de **1950 à 2100**. Les données de 1950 à 2023 sont des données issues de recensement de 238 pays/régions non-autonomes. Ce dataset constitue donc une source fiable, riche, et particulièrement pertinente dans un contexte de réflexion sur l’évolution des sociétés.


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

#### Description des variables du dataset

| Colonne         | Type      | Description |
|--------------------------|----------|------------|
| **SortOrder**            | int      | Ordre des lignes |
| **LocID**                | int      | Identifiant unique de la localisation |
| **Notes**                | string (nullable) | Informations additionnelles |
| **ISO3_code**            | string (nullable) | Code pays en 2 lettres selon la norme ISO 3166-1 alpha-3 |
| **ISO2_code**            | string (nullable) | Code pays en 2 lettres selon la norme ISO 3166-1 alpha-2 |
| **SDMX_code**            | string (nullable) | Code SDMX pour la localisation |
| **LocTypeID**            | int      | Type de la localisation |
| **LocTypeName**          | string   | Nom du type de localisation |
| **ParentID**             | int (nullable) | Identifiant du parent (si la localisation fait partie d'une région) |
| **Location**             | string   | Nom de la région/localisation |
| **VarID**                | int      | Identifiant de la variable |
| **Variant**              | string   | Type de scénario démographique (ex. Medium) |
| **Time**                 | int      | Année |
| **TPopulation1Jan**      | float    | Population totale au 1er janvier |
| **TPopulation1July**     | float    | Population totale au 1er juillet |
| **TPopulationMale1July** | float    | Population masculine au 1er juillet |
| **TPopulationFemale1July** | float | Population féminine au 1er juillet |
| **PopDensity**           | float    | Densité de population (habitants/km²) |
| **PopSexRatio**          | float    | Ratio hommes/femmes |
| **MedianAgePop**         | float    | Âge médian de la population |
| **NatChange**           | float    | Changement naturel de la population |
| **NatChangeRT**         | float    | Taux de changement naturel |
| **PopChange**           | float    | Changement total de la population |
| **PopGrowthRate**       | float    | Taux de croissance démographique |
| **DoublingTime**        | float    | Temps de doublement de la population |
| **Births**              | float    | Nombre total de naissances |
| **Births1519**          | float    | Naissances chez les 15-19 ans |
| **CBR**                 | float    | Taux brut de natalité (pour 1000 habitants) |
| **TFR**                 | float    | Taux de fécondité total (nombre moyen d'enfants par femme) |
| **NRR**                 | float    | Taux net de reproduction |
| **MAC**                 | float    | Âge moyen de la maternité |
| **SRB**                 | float    | Ratio de masculinité à la naissance (nombre de garçons pour 100 filles) |
| **Deaths**              | float    | Nombre total de décès |
| **DeathsMale**          | float    | Nombre de décès masculins |
| **DeathsFemale**        | float    | Nombre de décès féminins |
| **CDR**                 | float    | Taux brut de mortalité (pour 1000 habitants) |
| **LEx**                 | float    | Espérance de vie à la naissance |
| **LExMale**             | float    | Espérance de vie des hommes |
| **LExFemale**           | float    | Espérance de vie des femmes |
| **LE15**                | float    | Espérance de vie à 15 ans |
| **LE15Male**            | float    | Espérance de vie des hommes à 15 ans |
| **LE15Female**          | float    | Espérance de vie des femmes à 15 ans |
| **LE65**                | float    | Espérance de vie à 65 ans |
| **LE65Male**            | float    | Espérance de vie des hommes à 65 ans |
| **LE65Female**          | float    | Espérance de vie des femmes à 65 ans |
| **LE80**                | float    | Espérance de vie à 80 ans |
| **LE80Male**            | float    | Espérance de vie des hommes à 80 ans |
| **LE80Female**          | float    | Espérance de vie des femmes à 80 ans |
| **InfantDeaths**        | float    | Nombre de décès infantiles |
| **IMR**                 | float    | Taux de mortalité infantile (pour 1000 naissances vivantes) |
| **LBsurvivingAge1**     | float    | Nombre d'enfants survivant jusqu'à 1 an |
| **Under5Deaths**        | float    | Nombre de décès avant 5 ans |
| **Q5**                  | float    | Probabilité de mourir avant 5 ans |
| **Q0040, Q0040Male, Q0040Female** | float | Probabilité de mourir entre 0 et 40 ans (total, hommes, femmes) |
| **Q0060, Q0060Male, Q0060Female** | float | Probabilité de mourir entre 0 et 60 ans (total, hommes, femmes) |
| **Q1550, Q1550Male, Q1550Female** | float | Probabilité de mourir entre 15 et 50 ans (total, hommes, femmes) |
| **Q1560, Q1560Male, Q1560Female** | float | Probabilité de mourir entre 15 et 60 ans (total, hommes, femmes) |
| **NetMigrations**       | float    | Migration nette (immigrants - émigrants) |
| **CNMR**               | float    | Taux net de migration (pour 1000 habitants) |


---  

## Plan d’Analyse  

Avant de plonger dans l’analyse proprement dite, il est essentiel de commencer par une étape de nettoyage des données. Cela inclut la vérification de la qualité des données, le traitement des valeurs manquantes, et la gestion des anomalies éventuelles, telles que des valeurs erronées ou des colonnes vides. Nous pourrions également simplifier le jeu de données en conservant une seule colonne pour certaines informations redondantes, comme le code pays, afin de faciliter l’analyse.

Il est important de noter que, durant cette phase, nous pourrions rencontrer des difficultés liées à des données manquantes ou des valeurs aberrantes, particulièrement pour certains pays où l'information pourrait être incomplète. Ces problèmes seront pris en compte et traités au fur et à mesure pour garantir la fiabilité des résultats.
Des problèmes sont déjà présents sur le dataset. Premièrement, la fiabilité des données peut être remise en question car soit sont des estimations ou des données fabriquées et non vérifiables par des autorités compétentes extérieures (les chiffres des régimes autocratiques fermés seront pris avec des pincettes {ie: Erythrée, Corée du Nord, Turkménistan}). Certains phénomènes sociaux ne sont pas expressément montrés, les normes sociales (désir d’enfants, polygamie) ou les pratiques discriminatoires (avortements sélectifs) ne sont pas quantifiés. Des données manquent aussi cruellement pour une bonne analyse par exemple : 17 pays n’ont pas fourni de données récentes sur les avortements ou mortalité maternelle (ex : Arabie Saoudite, Somalie), les migrations climatiques ne sont pas isolées des autres flux. Enfin les projections, sans leur enlever toute légitimité, supposent une continuité des tendances, ignorant les ruptures (guerres, innovations médicales, effondrements écologiques) et modélisant des relations simplistes (ex : baisse linéaire de la fécondité avec l’éducation).


Une fois cette étape de nettoyage et de sensibilisation effectuée, nous pourrons commencer l’analyse proprement dite et explorer les tendances démographiques mondiales.

Ce jeu de données permet d’étudier en profondeur les dynamiques démographiques mondiales, passées et futures. Notre objectif principal est d’en extraire des tendances visuelles à l’échelle globale, régionale et nationale, et de les mettre en relation avec des enjeux actuels (vieillissement, natalité…).

### Questions d’analyse principales  

**1.  Dynamiques démographiques différentielles**

  L’objectif de cette partie sera principalement d’observer les trajectoires démographiques historiques (1950-2023) et projetées (2024-2100) à travers les trois scénarios SSP. Il s’agira à la fois de visualiser par région l’évolution démographique mais aussi de visualiser les 3 scénarios du futur démographique (SSP1, SSP2, SSP3). On se servira de line charts multiples pour chercher des croissances et décroissances.
  Cette question fera aussi appel à la transition démographique, nous prendrons trois pays symboliques de trois phases différentes (post-transition, inter-transition, et le vieillissement post-transition) pour comparer et observer ce processus face aux modèles de transition démographique.
  Ainsi pour finir cette partie, nous nous intéresserons aux migrations. Cette section analysera les migrations comme variable d’ajustement aux déséquilibres démographiques. Nous avons accès au nombre net de migrants, il serait donc intéressant de voir si des pôles d’immigration et d’émigration se dégagent, avec pourquoi pas un diagramme de Sankey.

**2.  Natalité et fécondité**

  L’un des piliers de la démographie est la natalité. Nous chercherons à comprendre comment elle a évolué au cours des 70 dernières années en analysant le Total Fertility Rate (TFR). Nous examinerons également la corrélation entre la mortalité infantile et la fécondité, en croisant ces données avec celles des grossesses adolescentes.
  Enfin, nous explorerons si une relation existe entre la fécondité et le développement économique, en utilisant des indices socio-économiques pour affiner l’analyse.

**3.  Différences sexuelles**

  Nous nous intéresserons ensuite aux disparités entre les sexes en termes de démographie. Nous comparerons les espérances de vie des hommes et des femmes dans chaque pays, en mettant en avant les tendances régionales. Cela nous permettra d’identifier les écarts d’espérance de vie et d’analyser s’ils se réduisent ou s’amplifient au fil du temps.
  Nous visualisons comment la proportion d’hommes et de femmes varie selon les tranches d’âge et comment cette répartition évolue dans le temps.Cette analyse nous aidera à comprendre à quel moment les écarts deviennent significatifs (vieillissement, surmortalité masculine, etc.).
  
**4.  Vieillissement de la population**
  Dans cette partie, nous nous intéresserons à l’évolution de la proportion de la population âgée de 65 ans et plus, à l’échelle mondiale, régionale et nationale. L’objectif sera d’identifier les pays confrontés à un vieillissement accéléré de leur population, et d’observer la vitesse à laquelle ce phénomène progresse selon les régions.
  Nous visualiserons également les rapports de dépendance, en comparant la population active (15–64 ans) aux populations dépendantes (0–14 ans et 65+), afin d’évaluer les pressions futures sur les systèmes de retraite, de santé et de solidarité intergénérationnelle.

  **5.  Urbanisation et population rurale**

  L’objectif de cette section sera d’étudier les dynamiques de population entre les milieux urbains et ruraux. À l’aide des données disponibles, nous analyserons l’évolution de la proportion de la population vivant en zone urbaine, par pays et par région, entre 1950 et 2100.
  Nous chercherons également à identifier les pays dans lesquels la croissance urbaine est la plus rapide, notamment via l’émergence de grandes métropoles (mégapoles).

  **6. Espérance de vie et santé**

  Cette partie portera sur l’évolution de l’espérance de vie à la naissance, indicateur clé du développement et de la santé publique. Nous analyserons son évolution par région et par sexe, et nous chercherons à mettre en évidence les disparités persistantes entre pays du Nord et pays du Sud.
L’analyse portera également sur la corrélation entre espérance de vie et développement socio-économique, en croisant les données avec des indices comme le PIB par habitant ou l’IDH.
  Nous mettrons en lumière les progrès réalisés dans certaines régions, mais aussi les inégalités encore très marquées, notamment en Afrique subsaharienne ou dans certaines zones en conflit.

  **7. Structure par âge et dividende démographique**

  Nous chercherons à comprendre à quel moment une population entre dans une phase de dividende démographique, lorsque la part de la population en âge de travailler (15–64 ans) dépasse largement celle des jeunes (0–14 ans) et des personnes âgées (65+).
  L’analyse portera sur l’évolution de la structure par âge au cours du temps, afin d’identifier les pays qui bénéficient ou bénéficieront d’une fenêtre démographique favorable à la croissance et au développement.

  **8.  Évolution de la population active**

  Cette partie s’intéressera exclusivement à la population active, définie ici comme les individus âgés de 15 à 64 ans.
Nous observerons son évolution sur la période 1950–2100, afin d’identifier les pays qui verront cette tranche d’âge augmenter, stagner ou diminuer.
  Cette question permet de mettre en évidence les transformations à venir du monde du travail, avec des conséquences sur le développement économique, la productivité et les équilibres sociaux.

  **9. Analyse des migrations nettes**

  L’objectif ici sera d’analyser les mouvements migratoires à l’échelle mondiale, en se concentrant sur le solde migratoire net (différence entre immigration et émigration) dans les différents pays.
	 Cette analyse permettra de repérer les régions les plus attractives, ainsi que celles qui subissent une fuite importante de leur population, avec des dynamiques parfois durables et parfois cycliques.

  **10. Taux de mortalité infantile**

  Nous chercherons à analyser l’évolution du taux de mortalité infantile au fil des décennies, indicateur clé du niveau de développement sanitaire d’un pays.
Cette mesure permet d’évaluer les progrès accomplis dans l’accès aux soins, à l’eau potable, à la nutrition, et plus globalement aux services essentiels pour les jeunes enfants.
  En suivant cette variable, il est possible de mesurer directement l’efficacité des systèmes de santé dans différentes régions du monde.

**11. Croissance démographique des pays émergents**

  Dans cette partie, nous chercherons à identifier les pays qui connaîtront une croissance démographique particulièrement rapide au cours du XXIe siècle.
L’objectif est de mettre en évidence les États où la population pourrait doubler voire tripler dans les prochaines décennies, en s’appuyant sur les projections à long terme.
Cette analyse met en lumière les futurs défis auxquels ces pays devront faire face, notamment en matière d’infrastructures, d’éducation et de gestion des ressources.

**12. Déclin démographique**

  À l’opposé des pays en forte croissance, certains États entrent dans une dynamique de déclin démographique, amorcée ou imminente.
Nous chercherons à identifier ces pays, en observant les tendances de diminution de leur population totale.
Ce phénomène est généralement lié à une faible natalité, un vieillissement avancé de la population, et parfois à des flux migratoires négatifs.
Comprendre ces trajectoires permettra de mieux cerner les défis économiques et sociaux qui y sont associés.

**13. Comparaison démographique par continent**

  Cette section portera sur la comparaison des évolutions démographiques des grandes régions du monde, afin d’identifier les continents qui concentreront la majeure partie de la croissance démographique au XXIe siècle.
  L’objectif est d’analyser les écarts de dynamiques entre les zones en croissance rapide (notamment l’Afrique) et celles en stagnation ou en décroissance (comme l’Europe), dans une perspective de rééquilibrage du poids démographique mondial.

**14. Répartition hommes-femmes dans la population mondiale**

  Cette partie visera à étudier l’évolution de la proportion d’hommes et de femmes dans la population totale au fil du temps.
L’objectif est d’analyser si certains pays présentent un déséquilibre persistant ou croissant entre les sexes, et d’en comprendre les dynamiques : surmortalité masculine, préférences culturelles, migration genrée, etc.
Cela permettra d’identifier les régions où l’équilibre démographique par sexe est le plus menacé ou au contraire le plus stable.

**15. Classement des pays par espérance de vie en 2100**

  Dans cette partie, nous chercherons à identifier les pays qui auront, selon les projections, l’espérance de vie la plus élevée à l’horizon 2100.
L’objectif est de comparer les valeurs prévues pour un ensemble de pays représentatifs, afin de mettre en lumière les évolutions attendues en matière de longévité.
Cette analyse permettra également de souligner les écarts persistants entre les différentes régions du monde, malgré les progrès globaux en santé publique.

**16. Impact des politiques migratoires sur la démographie mondiale**

Les politiques migratoires influencent fortement la dynamique démographique d'un pays. Cette question explore l'impact des politiques migratoires sur la population des pays au cours des dernières décennies et examine comment ces politiques affectent la croissance démographique à l’échelle mondiale, en particulier en comparant les pays avec des politiques migratoires restrictives et ceux avec des politiques plus ouvertes. Cette analyse pourrait révéler des tendances intéressantes concernant les migrations internationales, telles que les pays dont la population croît principalement en raison de l'immigration et ceux qui connaissent un déclin démographique en raison de l'émigration ou de politiques strictes. En croisant ces données avec des indicateurs économiques et sociaux, il serait possible de tirer des conclusions sur l'efficacité de ces politiques migratoires en matière de gestion démographique et de développement. 

