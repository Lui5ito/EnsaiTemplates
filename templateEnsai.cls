%============================================================================
%   - Internship report template for ENSAI's students
%
%   - This template can be downloaded from:
%
%   - Author: Louis Allain
%
%   - Template license: MIT License
%============================================================================


% Provides the class to the main.tex document
\ProvidesClass{templateEnsai}[2023/08/15 Internship Report Class]

% Class on which templateEnsai class is based on
\LoadClass[10pt, a4paper, onecolumn, oneside, openany]{report}


%============================================================================
%   Class Options
%============================================================================

%% Boolean value for confidential
\DeclareOption{confidential}{\def\@confidential{true}}

%% Set the report in english
\DeclareOption{en}{\def\@en{true}}

%% Set the report to a progress note format
\DeclareOption{progressReport}{\def\@progressReport{true}}

%% Declare is this is a report for a first, second or third year student
\DeclareOption{firstYear}{\def\@firstYear{true}}
\DeclareOption{secondYear}{\def\@secondYear{true}}
\DeclareOption{thirdYear}{\def\@thirdYear{true}}

%% Processes the options (mandatory)
\ProcessOptions\relax


%============================================================================
%   Dependencies
%============================================================================

\RequirePackage[left=25mm, right=25mm, top=25mm, bottom=25mm, paper=a4paper]{geometry} % for margins format
\RequirePackage{graphicx} % Required for inserting images
%\RequirePackage{svg} % Required for inserting SVG format files Could not make it work in VSCode
\RequirePackage[]{hyperref} % Required for enabling clickable links
\hypersetup{%
     colorlinks=true,%
     linkcolor=.,%
     filecolor=red,%
     citecolor = cyan,%
     urlcolor=teal,%
     } % Standard colors for links
\RequirePackage{xcolor} % Enables coloring words
\RequirePackage[skins]{tcolorbox} % Requireds for the blue box in the front page
\RequirePackage{titlesec} % Required to personalize chapter titles and sections
\RequirePackage{fancyhdr} % Required to personalize headers and footers
\ifdef{\@en}{}{\RequirePackage{indentfirst}} % Required to set the indent depending of the language
\RequirePackage{amsthm} % Required for writing proofs
\RequirePackage{tikz} % Required for backgroundimage
\RequirePackage{biblatex} % Required for making bibliography


%============================================================================
%   Genral changes for the whole document
%============================================================================

%% Define base color for the entire report
\definecolor{ensaicolor}{HTML}{0085bf}

%% Importing the bilbliography file
\addbibresource{BackMatter/mybib.bib}

%% Change proofs name according to the language used
\ifdef{\@en}{}{\renewcommand*{\proofname}{Preuve}}

%% Changes the title according to the year
% For first year
\ifdef{\@firstYear}{\ifdef{\@en}{\def\@ThisYear{1\textsuperscript{st} }}{\def\@ThisYear{1\textsuperscript{re} }}} {}
% For second year
\ifdef{\@secondYear}{\ifdef{\@en}{\def\@ThisYear{2\textsuperscript{nd} }}{\def\@ThisYear{2\textsuperscript{e} }}} {}
% For third year
\ifdef{\@thirdYear}{\ifdef{\@en}{\def\@ThisYear{3\textsuperscript{rd} }}{\def\@ThisYear{3\textsuperscript{e} }}} {}


%============================================================================
%   Front Page Variables
%============================================================================

%% Student's name
\newcommand*{\student}[2]{\def\@Studentfirstname{#1}\def\@Studentlastname{#2}}
\newcommand*{\Studentfirstname}[1]{\def\@Studentfirstname{#1}}
\newcommand*{\Studentlastname}[1]{\def\@Studentlastname{#1}}

%% Internship theme
\newcommand*{\theme}[1]{\def\@theme{#1}}

%% Internship organization
\newcommand*{\organization}[1]{\def\@organization{#1}}

%% Internship adress
\newcommand*{\address}[1]{\def\@address{#1}}

%% Student's graduate year
\newcommand*{\graduateYear}[1]{\def\@graduateYear{#1}}

%% Student's internship supervisor
\newcommand*{\supervisor}[2]{\def\@Supervisorfirstname{#1}\def\@Supervisorlastname{#2}}
\newcommand*{\Supervisorfirstname}[1]{\def\@Supervisorfirstname{#1}}
\newcommand*{\Supervisorlastname}[1]{\def\@Supervisorlastname{#1}}

%% Student's internship teacher (school supervisor)
\newcommand*{\teacher}[2]{\def\@Teacherfirstname{#1}\def\@Teacherlastname{#2}}
\newcommand*{\Teacherfirstname}[1]{\def\@Teacherfirstname{#1}}
\newcommand*{\Teacherlastname}[1]{\def\@Teacherlastname{#1}}

%% Additional image next to the university one
\newcommand*{\addImage}[1]{\def\@addImage{#1}}


%============================================================================
%   Rendering command for all front page command
%============================================================================

% Render a name
\newcommand\name[2]{{\textbf{#1} \textbf{#2}}}

% Render theme, organization and graduate year
\newcommand\internshipInfo[1]{{\textbf{#1}}}

% Render address
\newcommand\renderAddress[1]{{#1}}


%============================================================================
%   Front Page Rendering
%============================================================================
% Needs student's name and graduate year, internship theme, organization, adress and internship supervisors to be defined

\newcommand*{\makefrontpage}{

     \thispagestyle{empty}

     %% Makes background image for progress report
     \ifdef{\@progressReport}{\tikz[remember picture,overlay] \node[opacity=0.6,inner sep=0pt] at (current page.center){\includegraphics[width=\paperwidth,height=\paperheight]{Images/background.jpg}};}{}

     %% Create two columns, one far left for the logo, one far right for the student's name
     \begin{minipage}{0.25\textwidth}
          \includegraphics[width=19mm]{Images/Ensai_logo_small.png}
          \hfill
          \ifdefined \@addImage
          \includegraphics[width=19mm]{\@addImage}
          \fi
     \end{minipage}
     \hfill
     \begin{minipage}{0.6\textwidth}
         \raggedleft
         \Large \name{\@Studentfirstname}{\@Studentlastname}
         \ifdef{\@confidential}{\\ \normalsize \textit{\ifdef{\@en}{Confidential}{Confidentiel}}}{}
     \end{minipage}

     %% Vspace to adjust for position of the main title
     \vspace{4.5cm}

     %% Main title
     \begin{center}
          \huge{\textbf{\ifdef{\@progressReport}{\ifdef{\@en}{Progress Report}{Note d'étape}}{\ifdef{\@en}{Internship Report}{Rapport de stage}}}} \\
          \huge{\textbf{\ifdef{\@progressReport}{\ifdef{\@en}{\@ThisYear year internship}{Stage de \@ThisYear année}}{\ifdef{\@en}{\@ThisYear year}{\@ThisYear année}}}}
     \end{center}

     %% Vspace to adjust for position of the main information
     \vspace{3cm}

     %% Main information
     \begin{minipage}{1\textwidth}
          \textbf{\LARGE{\ifdef{\@en}{Internship subject : }{Thème du stage : }\internshipInfo{\@theme}}}\\
          \vspace{2cm}

          \textbf{\Large{\ifdef{\@en}{Internship structure : }{Structure d'accueil : }\internshipInfo{\@organization}}}\\
          \vspace{0.1cm}

          \large{\ifdef{\@en}{Internship address  : }{Adresse du stage : }\renderAddress{\@address}}
     \end{minipage}
     
     %% Vspace to adjust for position of the internship information
     \vspace{4.6cm}

     %% Internship information
     \begin{minipage}{1\textwidth}

          \begin{tcolorbox}[colback=ensaicolor, colframe=ensaicolor, sharp corners, rounded corners=all, width=1cm, height=0.318cm]
          \end{tcolorbox}
          \vspace{0.5cm}

          \textbf{\large{\ifdef{\@en}{Graduate Year : }{Promotion : }\internshipInfo{\@graduateYear}}}\\

          \textbf{\large{\ifdef{\@en}{Supervisor : }{Maître de stage : }\name{\@Supervisorfirstname}{\@Supervisorlastname}}}\\
          
          \textbf{\large{\ifdef{\@en}{Teacher : }{Référent pédagogique : }\name{\@Teacherfirstname}{\@Teacherlastname}}}\\
     \end{minipage}

     \clearpage
}


%============================================================================
%   Table of contents, figures and tables name
%============================================================================

% Rename table of contents
\renewcommand{\contentsname}{\ifdef{\@en}{Table of Contents}{Table des matières}}

% Rename table of figures
\renewcommand{\listfigurename}{\ifdef{\@en}{List of Figures}{Liste des figures}}

% Rename table of tables
\renewcommand{\listtablename}{\ifdef{\@en}{List of Tables}{Liste des tableaux}}

% Rename appednix
\ifdef{\@en}{}{\renewcommand{\appendixname}{Annexe}}

% Rename bibliography
\DefineBibliographyStrings{english}{bibliography = {\ifdef{\@en}{Bibliography}{Bibliographie}}}


%============================================================================
%   Chapters name styling
%============================================================================

%% Chapter's name
\ifdef{\@en}{}{\renewcommand{\chaptername}{Chapitre}}

%% Chapter's look
\titleformat{\chapter}[block]
     {}
     {\flushleft \Huge \color{black}  {\textbf \chaptertitlename}  {\textbf \thechapter :}} {10pt}{\bfseries\Huge} [{\titlerule[0mm]}]

% {dont know}{above}{under}
\titlespacing{name=\chapter}{0cm}{0cm}{0.8cm}


%============================================================================
%   Headers and footers
%============================================================================

\setlength{\headheight}{13.07225pt}
\addtolength{\topmargin}{-1.07225pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\leftmark} % Chapter title on the left
\fancyhead[R]{\rightmark} % Section title on the right
\fancyfoot[C]{\thepage} % Page number in the middle
\fancyfoot[L]{\includegraphics[height=11pt]{\@addImage}} % Image on the left
\fancyfoot[R]{\includegraphics[height=14pt]{Images/Ensai_logo_small.png}} % Image on the right