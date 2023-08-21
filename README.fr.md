# Modèle pour les rapports de stage des élèves de l'ENSAI.

Ce template LaTeX vise à aider les étduiants de l'ENSAI à écrire leur rapport de stage sur LaTeX. Il peut aussi être utilisé comme base pour un projet fait à l'école comme le projet statistique.

[![french](https://img.shields.io/badge/Readme_in-Fran%C3%A7ais-blue)]()

[![Overleaf](https://img.shields.io/badge/Overleaf-black?logo=overleaf)]()
[![Version](https://img.shields.io/github/v/release/Lui5ito/EnsaiTemplates.svg)]()
[![Github Downloads](https://img.shields.io/github/downloads/Lui5ito/EnsaiTemplates/total.svg)]()
[![License](https://img.shields.io/github/license/Lui5ito/EnsaiTemplates.svg)]()

## 🔍 A quoi ressemble le template
| Options de classe | [firstYear, confidential]  | [secondYear, en]| [thirdYear, progressReport] |
|--------------|--------------|-----------|------------|
| How it looks | <img src="https://github.com/Lui5ito/EnsaiTemplates/blob/main/Examples/example_firstYear_confidential.png" width="210" height="297" /> | <img src="https://github.com/Lui5ito/EnsaiTemplates/blob/main/Examples/example_secondYear_en.png" width="210" height="297" />      | <img src="https://github.com/Lui5ito/EnsaiTemplates/blob/main/Examples/example_thirdYear_progressReport.png" width="210" height="297" />        |

## 🔧 Installation

Si vous voulez utiliser Overleaf : 
- Vous pouvez télécharger le modèle [ici]()
- Alternativement, vous pouvez télécharger le dépôt en fichier .zip and le charger dans Overleaf : 
    - Dans votre compte Overleaf, cliquez sur New Project
    - Séléctionnez Upload Porject
    - Séléctionnez le fichier .zip que vous avez téléchargé
    - C'est fait

Si vous voulez utiliser un autre éditeur LaTeX :
- Vous pouvez télécharger le dépôt sous .zip et le charger dans votre éditeur
- Vous pouvez aussi cloner le dépôt et le connecter à votre éditeur

## 📝 Comment utiliser ce modèle

### Options de classe

Ce modèle fournit une nouvelle classe de fichier LaTeX, "templateEnsai". Il y a plusieurs options associées à cette classe.

- **firstYear**, **secondYear**, **thirdYear** : cette option est *obligatoire*, utilisez une des trois.
- **confidential** : utilisez cette option si votre stage est classé confidentiel.
- **en** : utilisez cette option si vous souhaitez rédiger votre rapport en anglais.
- **progressReport** : utilisez cette option si vous voulez rédiger votre note d'étape.

### Rendering name and title

La classe fournit 9 variables pour personnaliser la page de garde.

- Votre nom : \student{prénom}{nom}
- Le thème de votre stage : \theme{votretitre}
- La structure d'accueil dans laquelle vous avez effectué votre stage : \organization{structureaccueil}
- L'adresse de votre stage : \adress{adresse}
- Votre promotion : \graduateYear{année}
- Votre maître de stage : \supervisor{prénom}{nom}
- Vore référent pédagogique : \teacher{prénom}{nom}
- Vous pouvez ajouter le logo de votre stucture d'accueil si vous le souhaitez (optionel) : \addImage{cheminImage}

Une fois que vous avez défini ces variables, il faut ajouter \makefrontpage après le begin{document} et la page de garde s'affichera avec vos informations.

### Avant propos

L'avant propos regroupe les remerciements, l'abstract et le résumé. Le contenu de ces pages s'écrit dans le dossier /FrontMatter et dans les fichiers respectifs. Si vous ne voulez pas écrire de remerciements par exemple, simplement supprimer la ligne correspondante dans le fichier main.tex.

### Propos

C'est la partie centrale de votre rapport.
Si vous ne voulez pas ajouter la liste des figures ou des tables, simplement supprimer la ligne correspondante dans le fichier main.tex.
Le nom de la table des matières et des listes est défini par la langue choisi dans les options de la classe.

Votre introduction s'écrit dans le fichier Body/introduction.tex.
Votre conclusion s'écrit dans le fichier Body/conclusion.tex.

Pour écrire un nouveau chapitre, créez un fichier dans le dossier Body, votrechapitre.tex. Ecrivez le contenu de votre chapitre dans ce fichier avec vos sections, sous-sections. Pour visualiser votre chapitre dans votre rapport, ajoutez la ligne \input{Body/votrechapitre} là où vous voulez voir votre chapitre.


### Après propos

L'après propos contient la bibliographie et les annexes.

Pour faire votre bibliographie, vous pouvez soit importer votre fichier .bib sous le nom mybib.bib dans le dossier BackMatter. Ou bien, copier le contenu de votre fichier .bib dans le fichier existant mybib.bib. Pour que votre bibliographie il suffit de citer vos références dans votre text de la manière suivante, \cite{votrereference}.

Pour créer une nouvelle annexe, créez un fichier dans le dossier BackMatter, nouvelleannexe.tex. Créer un chapitre et écrivez votre annexe dans ce fichier. Pour faire apparaître votre annexe, ajouter la ligne suivante dans le main.tex à l'endroit où vous voulez voir votre annexe, \input{BackMatter/nouvelleannexe}.


## 👀 Ajouts en cours

- Option de classe pour l'ENSAE
- Option de classe pour un modèle de thèse
- Option de classe pour les projets statistiques