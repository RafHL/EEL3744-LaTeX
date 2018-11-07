\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MicroProc}[2018\/11\/3 uP LaTeX class]

\LoadClass[letterpage, 12pt]{article}
\RequirePackage[margin=1in]{geometry} % 1 inch margins
\RequirePackage{fancyhdr}   % Helps make custom headers
\RequirePackage{titlesec}   % Helps make custom sections and make them the right size
\RequirePackage{fontspec}   % For setting default fonts
\RequirePackage{indentfirst}% Indent first paragraph

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax % Pass any additional paramters into article class

\setmainfont{Times New Roman} % Use times new roman as the main font
\setmonofont{Consolas}  % Use consolas for monospace

\pagestyle{fancy}
\fancyhead{}    % Clear header
\fancyfoot{}    % Clear footer
\fancyfoot[R]{\small\thepage}       % 11 pt foot numbers (assuming 12 pt default)
\renewcommand{\headrulewidth}{0pt}  % Remove header decorative line
\renewcommand{\footrulewidth}{0pt}  % Remove footer decorative line

\titleformat{\section}
    {\normalfont\Large\bfseries}{\Alph{section}.}{1ex}{} % 17pt font assuming 12pt default
\titleformat{\subsection}
    {\normalfont\large\bfseries\filcenter}{Section \arabic{subsection}}{1ex}{} % 14pt font assuming 12pt default
