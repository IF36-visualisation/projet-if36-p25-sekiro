# Projet IF36 - Visualisation de données  
## Groupe : Sekiro  
## Dataset : World Population Prospects (ONU)

---



### Introducyion

Nous avons choisi d’utiliser le jeu de données **“World Population Prospects”**, mis à disposition par l’**Organisation des Nations Unies** via leur site officiel : [https://population.un.org/wpp](https://population.un.org/wpp)

Ce dataset est mis à jour tous les 2 ans environ, la version utilisée sera la dernière, celle de 2024. Plus précisément, ces documents sont édités et publiés par le **DAES** (DESA en anglais), le *Département des Affaires Économiques et Sociales* qui est un “secrétariat” (un organisme principal) de l’ONU qui produit et analyse des datasets afin de produire des rapports et aide les pays à prendre des décisions et à avoir des agendas de politiques au fait des enjeux sociétaux et économiques. Les rapports publics portent par exemple sur l’avancement des droits des femmes, de la jeunesse, des autochtones, mais aussi sur l’état et les objectifs futurs des forêts, des énergies renouvelables, de l’économie et donc aussi de la démographie.

Ces données contiennent des projections démographiques standardisées pour l’ensemble des pays du monde, couvrant la période de **1950 à 2100**. Les données de 1950 à 2023 sont des données issues de recensement de 238 pays/régions non-autonomes. Ce dataset constitue donc une source fiable, riche, et particulièrement pertinente dans un contexte de réflexion sur l’évolution des sociétés.


Nous avons sélectionné ces données pour plusieurs raisons :

- Le **caractère universel et actuel** de la problématique démographique (vieillissement, surpopulation, politiques publiques, etc.)
- L’**intérêt personnel** que nous portons aux enjeux de développement, d’écologie, et de géopolitique
- La **structuration claire** et la **profondeur historique et prospective** de ces données, qui permettent des visualisations très variées

Les fichiers sont fournis au format **CSV**, à différents niveaux de détail (mondial, par continent, par pays/sous-régions, par âge, par sexe, etc.).

#### Structure des données :

##### Source

-   recensements nationaux officiels (1950-2023) ;
-   enquêtes démographiques et sanitaires ;
-   registres d'état civil (naissances/décès) ;
-   modèles statistiques sophistiqués (pour les projections 2024-2100)

La méthodologie intègre des variables **clés** : tendances de fécondité, mortalité, migrations internationales, politiques gouvernementales et indicateurs socio-économiques.

##### Format

Le dataset propose :

-   15 fichiers CSV thématiques (population totale, fécondité, mortalité, migration, etc.)
-   4 niveaux de granularité spatiale (mondial, régional, national, urbain/rural)
-   regroupements par tranches d'âge (découpages quinquennaux)
-   projections selon 3 scénarios (bas/moyen/haut variant selon les politiques natalistes)


##### Description

Variables principales :

-   Indicateurs démographiques bruts (population totale, par sexe et age)
-   Changement et croissance de la population (changement naturel et total, taux de croissance naturel et total ainsi que le temps de doublement de la population)
-   Naissances et fertilité (naissance, age de la mère à la procréation, taux de fécondité brut et total et le ratio h/f à la naissance)
-   Décès et mortalité (décès totaux, par sexe et age avec un focus sur la mortalité infantile) 
-   Migration (nombre net et taux de migration nette)

Couverture temporelle unique :

Historique : 1950-2023 (données observées/recueilli)
Projections : 2024-2100 (modélisations SSP - Shared Socioeconomic Pathways)

  

#### Plan d’analyse

Ce jeu de données permet d’étudier en profondeur les dynamiques démographiques mondiales, passées et futures. Notre objectif principal est d’en extraire des tendances visuelles à l’échelle globale, régionale et nationale, et de les mettre en relation avec des enjeux actuels (vieillissement, natalité…).

Voici les questions principales que nous souhaitons explorer :


1.  Dynamiques démographiques différentielles

  L’objectif de cette partie sera principalement d’observer les trajectoires démographiques historiques (1950-2023) et projetées (2024-2100) à travers les trois scénarios SSP. Il s’agira à la fois de visualiser par région l’évolution démographique mais aussi de visualiser les 3 scénarios du futur démographique (SSP1, SSP2, SSP3). On se servira de line charts multiples pour chercher des croissances et décroissances.
  Cette question fera aussi appel à la transition démographique, nous prendrons trois pays symboliques de trois phases différentes (post-transition, inter-transition, et le vieillissement post-transition) pour comparer et observer ce processus face aux modèles de transition démographique.
  Ainsi pour finir cette partie, nous nous intéresserons aux migrations. Cette section analysera les migrations comme variable d’ajustement aux déséquilibres démographiques. Nous avons accès au nombre net de migrants, il serait donc intéressant de voir si des pôles d’immigration et d’émigration se dégagent, avec pourquoi pas un diagramme de Sankey.


2.  Natalité et fécondité

  L’un des piliers de la démographie est la natalité. Nous chercherons à comprendre comment elle a évolué au cours des 70 dernières années en analysant le Total Fertility Rate (TFR). Nous examinerons également la corrélation entre la mortalité infantile et la fécondité, en croisant ces données avec celles des grossesses adolescentes.
  Enfin, nous explorerons si une relation existe entre la fécondité et le développement économique, en utilisant des indices socio-économiques pour affiner l’analyse.


3.  Différences sexuelles
    
  Nous nous intéresserons ensuite aux disparités entre les sexes en termes de démographie. Nous comparerons les espérances de vie des hommes et des femmes dans chaque pays, en mettant en avant les tendances régionales. Cela nous permettra d’identifier les écarts d’espérance de vie et d’analyser s’ils se réduisent ou s’amplifient au fil du temps.
  Nous visualisons comment la proportion d’hommes et de femmes varie selon les tranches d’âge et comment cette répartition évolue dans le temps.Cette analyse nous aidera à comprendre à quel moment les écarts deviennent significatifs (vieillissement, surmortalité masculine, etc.).
