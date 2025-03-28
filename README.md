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

