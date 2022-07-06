# Application Feed Meal

Feed Meal est une application créé en Flutter dans le cadre du cours de "Projet Dev" à Ynov Campus Lyon.

Elle est réalisé par :
- [Pierre VUE](https://github.com/KeeMoh)
- [Florian BERTHIER](https://github.com/Orthoceras69)

## Introduction

Feed Meal est une application permettant d'organiser les repas de sa semaine à l'aide de repas créé en amont via des récettes soit récupéré via une API soit créé à la main.

Une fois le planning de la semaine créé le but de cette application est de nous fournir des informations sur les apports caloriques ainsi que sur la liste de course de la semaine.

## État actuel du projet

Actuellement le projet n'est pas terminé, nous avons un front fonctionnel et une structure terminé avec l'arborescence et la base de donnée.

## Description Technique de l'application

### Téchnologies utilisées

L'application est réalisé à l'aide de Flutter, et utilise une base de donnée Firebase ainsi que des appels API.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=white)
![API](https://img.shields.io/badge/API-FF3621?style=for-the-badge&logo=databricks&logoColor=white)

### Arborescence de l'application

Une fois l'application lancé, on se retrouve sur la page de connexion ou l'on peux si nous n'avons pas déjà un compte aller sur la page de création de compte ou si on possède déjà un compte se connecter via le formulaire.

Une fois connecté on arrive sur la page d'accueil qui est également la page du planning de la semaine sur laquelle on peut ajouter des repas sur chaque jours de la semaine.

Depuis chaque pages de l'appli on peut ouvrir le drawer qui contient plusieurs liens vers d'autres pages :

- _Planning_ : Page sur laquelle on retrouve le planning de la semaine avec les différents repas séléctionnés.
- _Repas_ : Page sur laquelle on retrouve tous les repas créé à l'aide des différentes recettes enregistré sur le compte.
- _Mes Recettes_ : Page sur laquelle on retrouve toutes les recettes enregistré sur le compte.
- _Nouvelles Recettes_ : Page sur laquelle on peux rechercher des recettes sur l'API afin de les enregistrer dans le compte.
- _Réglages_ : Page sur laquelle  on peut actuellement se déconnecter.

![Arborescence](https://github.com/Orthoceras69/feed-meal/tree/main/assets/readme/Arborescence.png)

### Arborescence du projet

Pour ce qui est des fichiers du projet, nous sommes partis sur une arborescence classique d'un projet Flutter. On retrouve des dossier générés automatiquement tels que `android`, `ios`, `test`, `web` et `windows`.

Dans le dossier `assets` on retrouve toutes nos photos utilisés sur l'appli et les polices d'écritures.

Dans le dossier `lib` on retrouve tous les fichiers servant à la création de l'appli eux même rangés dans des sous fichiers :

`config` : les éléments de configuration qu'on retrouve partout dans l'appli (ici la palette de couleurs dans les différentes variantes).

`models` : les modeles de données récupérés (les classes).

`services` : les appels API.

`views` : les différentes pages de l'application.

`widgets` : les éléments réutilisé à plusiseurs endroits de l'apllication.

`main.dart` : Fichier principal de l'application qui sert d'origine.