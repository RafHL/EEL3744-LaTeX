\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MicroProc}[2018\/11\/3 uP LaTeX class]

\LoadClass[12pt]{article}
\RequirePackage[margin=1in]{geometry} % 1 inch margins, easiest way to set margins
\RequirePackage{fancyhdr}   % Helps make custom headers
\RequirePackage{titlesec}   % Helps make custom sections and make them the right size
\RequirePackage{indentfirst}% Indent first paragraph
\RequirePackage{comment}
% Alternative to Times New Roman or pdflatex default, works for both
\RequirePackage[T1]{fontenc}
\RequirePackage{mathpazo}
\RequirePackage{eulervm}
\RequirePackage{inconsolata}

\begin{comment}
\RequirePackage{ifxetex}
    \ifxetex
        \RequirePackage{fontspec}   % For setting default fonts
        \setmainfont{Times New Roman}[Ligatures=Rare] % Use times new roman as the main font
        \setmonofont{Consolas}  % Use consolas for monospace
        \RequirePackage[cmbraces]{newtxmath} % Plays well with Times New Roman
    \else
        \RequirePackage{lmodern}[Ligatures=Rare] % Alternative for computer modern
        \RequirePackage{inconsolata}
    \fi
\end{comment}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax % Pass any additional paramters into article class

\pagestyle{fancy}
\fancyhead{}    % Clear header
\fancyfoot{}    % Clear footer
\fancyfoot[R]{\small\thepage}       % 11 pt foot numbers (assuming 12 pt default)
\renewcommand{\headrulewidth}{0pt}  % Remove header decorative line
\renewcommand{\footrulewidth}{0pt}  % Remove footer decorative line

% These guys make A. Header and Section Number for section and subsection commands
% respectively
\titleformat{\section}
    {\normalfont\Large\bfseries}{\Alph{section}.}{1ex}{} % 17pt font assuming 12pt default
\titleformat{\subsection}
    {\normalfont\large\bfseries\filcenter}{Section \arabic{subsection}}{1ex}{} % 14pt font assuming 12pt default

\setlength{\parskip}{1ex} % 1 x of space between paragraphs, use (\par for paragraphs with
                          %     no labels).

% The question environment simply makes a list with no separation between the questions.
\newenvironment{question}
    {\begin{enumerate}[leftmargin=+10ex, noitemsep]}
    {\end{enumerate}}

% The answer environment makes a blue hanging indent list with no bullets or labels.
\newenvironment{answer}
    {\begin{list}{}{\setlength{\itemindent}{-\leftmargin}\color{blue}}}
    {\end{list}}
