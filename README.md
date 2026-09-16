
# Magazine Infos Flutter

A brief description of what this project does and who it's for

Application mobile développée avec Flutter dans le cadre du cours de Développement Mobile (Atelier – Activité n°4). Elle présente les informations d'un magazine numérique à travers une interface respectant les principes du Material Design.

Ce dépôt regroupe les deux versions progressives du projet :

activite1/ — Première version : structure minimale de l'application.
activite2/ — Version enrichie : interface découpée en widgets personnalisés.
## 📱 Aperçu

Activité 4.1

AppBar + image + bouton flottant.

Activité 4.2

Interface complète avec titre, texte, icônes et rubriques
## Screenshots

(<img width="1322" height="1018" alt="Capture d&#39;écran 2026-09-16 104451" src="https://github.com/user-attachments/assets/5df993f6-6095-44d4-9dc0-e27622974fe9" />
)
<img width="937" height="1072" alt="Capture d&#39;écran 2026-09-16 104817" src="https://github.com/user-attachments/assets/63e28282-6d25-45c9-988c-7fb1b295183f" />



## 🎯 Activité 4.1 — Première version

Objectif : s'initier au développement Flutter en créant une première application simple.

Contenu :

* void main() qui lance le widget MonAppli

* MonAppli (StatelessWidget) : configure le MaterialApp

* PageAccueil (StatelessWidget) : retourne un Scaffold avec :

     . une AppBar (titre "Magazine Infos", icône menu, icône recherche)

     . une image principale locale
     
     . un FloatingActionButton affichant un message au clic
## 🎯 Activité 4.2 — Interface enrichie

Objectif : structurer l'application en plusieurs widgets réutilisables.

Nouveaux widgets ajoutés dans main.dart :                

Role des widgets:

  * PartieTitre       :      Titre principal et sous-titre du magazine

  * PartieTexte : Paragraphe descriptif présentant le magazine

  * PartieIcone : Trois actions rapides : Téléphone, Mail, Partage

  * PartieRubrique : Deux images côte à côte (bords arrondis) illustrant des     rubriques
## 🛠️ Technologies utilisées

   * Flutter (SDK)
   
   * Dart

   * Material Design
## 📂 Structure du projet

magazine-infos-flutter/
├── activite1/
│   ├── lib/
│   │   └── main.dart
│   ├── assets/images/
│   └── pubspec.yaml
├── activite2/
│   ├── lib/
│   │   └── main.dart
│   ├── assets/images/
│   └── pubspec.yaml
└── README.md
## 🚀 Installation et exécution

    1. Cloner le dépôt :

           git clone https://github.com/waotientraore/magazine-infos-flutter.git

    2. Se placer dans le dossier de la version souhaitée :

          cd activity1      # ou  activity2

    3. Installa   les dépendances:

        flutter pub get

    4. Lancer l'application sur un émulateur Android ou un apparel connecté:

        flutter run
        
## ✅ Fonctionnalités

  *  Interface Material Design (AppBar, image, bouton flottant)

  *   Widgets personnalisés de type StatelessWidget

  *    Gestion des ressources locales via pubspec.yaml

  *    Interface modulaire et réutilisable (activité 4.2)
## Authors

 TRAORE WAOTIEN

 https://github.com/waotientraore/magazine-infos-flutter/new/main

 Cours: Développement Mobile_ Atelier Activity n°4
