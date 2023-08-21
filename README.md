# Internship report template for ENSAI's students.

This is a LaTeX template for ENSAI's student to help them write their internship reports in LaTeX. Can also be used as a baseline for school project.

[![french](https://img.shields.io/badge/Readme_in-Fran%C3%A7ais-blue)]()

[![Overleaf](https://img.shields.io/badge/Overleaf-black?logo=overleaf)]()
[![Version](https://img.shields.io/github/v/release/Lui5ito/EnsaiTemplates.svg)]()
[![Github Downloads](https://img.shields.io/github/downloads/Lui5ito/EnsaiTemplates/total.svg)]()
[![License](https://img.shields.io/github/license/Lui5ito/EnsaiTemplates.svg)]()

## How to install

If you want to use this template in Overleaf : 
- You can use the Overleaf template [here]()
- Or you can download the repository as a .zip file and upload it to Overleaf : 
    - In your Overleaf project page select New Project
    - Select Upload Project
    - Select the .zip file of this repository
    - Done

If you want to use this template in your favorite LaTeX editor you can :
- You can download the repository as a .zip file and put it in your editor
- Or you can clone the repository and connect your repo to your editor


## How it looks
<img src="https://github.com/Lui5ito/EnsaiTemplates/blob/main/Examples/example_1.png" width="200" height="200" />








## How to use the template

### Class option

The LaTeX class "templateEnsai" comes with a few options that you can use.

- firstYear, secondYear, thirdYear : this option is **mandatory**, use one of the three.
- confidential : use this option if your intership has confidential data in it.
- en : use this option if you want to write your report in english.
- progressReport : use this option if your are writing the half-way report to send the school.

### Rendering name and title

The class provides 9 variables that makes the title page, for : 

- Your name : \student{firstname}{lastname}
- Your internship title/theme : \theme{yourtitle}
- The organization in which you did the internship : \organization{thecompanyname}
- The address of your internship : \adress{theaddress}
- Your graduate year : \graduateYear{writetheyear}
- Your supervisor during your internship : \supervisor{supervisorfirtname}{supervisorlastname}
- Your referent teacher : \teacher{teacherfirstname}{teacherlastname}
- You can add your internship's organization logo (optional) : \addImage{pathtotheimage}

After you have set all those variables, after the begin{document} write \makefrontpage and the front page will be rendered with your variable and class options.

### Front matter

The front matter contains the aknowledgements, abstract and an abstract in your language if needed.
You can write the content of such pages in the folder /FrontMatter and in their respective files (ending in .tex)
If you don't want to input one of those pages simply delete the corresponding line in the main.tex

### Body

The body contains the main part of your report.
If you don't want to render one of the tables simply delete the corresponding line.
The title of those table are changed based on the language you choose in the class option.

The content of the introduction goes in the Body/introduction.tex file. 
The content of the conclusion goes in the Body/conclusion.tex file.

To write a new chapter, create a file in the Body folder. Body/mynewchapter.tex. Write the content of your chapter in this file. Then, in the main.tex file add the line \input{Body/mynewchapter} where you want to see this chapter.

### Back matter

The back matter contains the bibliography and the appendices.

Making the bibliography is very simple. Import your .bib file under the name of mybib.bib in the BackMatter folder, or simply copy/paste your .bib file into the existing mybib.bib file. To make the bibliography appears you must cite your reference like this : \cite{name_of_reference}.

To make a new appendix, create a file in the BackMatter folder, yournewappendix.tex. Make a chapter and write your appendix in this file, you can have section and subsection in your appendix. To make it appear in your report, add the line \input{BackMatter/yournewappendix} where you want it to appear.

## Errors and more customizaton

If you want to add a package you can either add it in the main.tex file, or in the templateEnsai.cls file in the Dependencies section with \RequirePackage{packagename}.

If you encounter an error while using this template you can fill an issue in the [GitHub repository](). I will try my best to help you.

If you want to drasticly change the front page or the style of your report, feel free to fork the repository and make your changes.

If you want more functionalities in this template, feel free to suggest them by raising an issue.


## Additionnal feature I am working on

- Adding a *school* class option for ENSAE
- Adding a *thesis* class option for thesis template
- Adding *StatisticProject* class option for school project template


## License



