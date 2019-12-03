%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% eric.cls
%
% LaTeX class template for Eric
% Version 2.3beta (2017/05/21)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{eric}[2017/05/21 v2.3beta LaTeX class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[twocolumn]{book}
\typeout{************}
\typeout{* eric.cls *}
\typeout{************}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Temporary table of contents
\newwrite\temptoc
\immediate\openout\temptoc=\jobname.ett
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The xcolor package must stay here for compability reason
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[table,RGB]{xcolor}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% French
\RequirePackage[cyr]{aeguill}
\RequirePackage[francais]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T2A,T1]{fontenc}
\RequirePackage{anyfontsize} % set any font size
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\Huge}{\fontsize{22,39488pt}{26,873856pt}\selectfont}
\renewcommand{\huge}{\fontsize{18,6624pt}{22,39488pt}\selectfont}
\renewcommand{\LARGE}{\fontsize{15,552pt}{18,6624pt}\selectfont}
\renewcommand{\Large}{\fontsize{12,96pt}{15,552pt}\selectfont}
\renewcommand{\large}{\fontsize{10,8pt}{12,96pt}\selectfont}
\renewcommand{\normalsize}{\fontsize{9pt}{10,8pt}\selectfont}
\renewcommand{\small}{\fontsize{8pt}{9,6pt}\selectfont}
\renewcommand{\footnotesize}{\fontsize{7pt}{8,4pt}\selectfont}
\renewcommand{\tiny}{\fontsize{5pt}{6pt}\selectfont}
\newcommand{\exsofont}{\fontsize{8pt}{9,6pt}\selectfont}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonts
\RequirePackage[adobe-utopia]{mathdesign}
%\RequirePackage[T1]{fontenc}
\RequirePackage[scaled=.85]{FiraSans}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usepackage{newtxsf}
% Pagelayout
\RequirePackage{geometry}
\geometry{b5paper,left=13mm,right=13mm,top=21.3mm,bottom=12.7mm}
\setlength{\columnsep}{4.1mm}
% distanza colonne 4.1mm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% microtype
\RequirePackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% header
% height=13.2mm, width 19.6 + 0.4 + 30
% pari height 21.6 10mm square
% toc l off-set 30

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATH
\RequirePackage{amsmath}
%\RequirePackage{amssymb}
%\RequirePackage{amsfonts}
\RequirePackage{starfont}
\RequirePackage{commath}
\RequirePackage{cases}
\RequirePackage{mathtools}
\RequirePackage{stmaryrd}

\allowdisplaybreaks
\setlength{\abovedisplayskip}{1ex}%
\setlength{\belowdisplayskip}{1ex}%
\setlength{\abovedisplayshortskip}{1ex}%
\setlength{\belowdisplayshortskip}{1ex}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graphics
\RequirePackage{graphicx}
\RequirePackage{calc}
\RequirePackage{verbatim}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{rotating}
\RequirePackage{wrapfig}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{multido}
\RequirePackage{tabto}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TikZ
\IfFileExists{./frontmatter/tikzsettings.tex}{\input{./frontmatter/tikzsettings.tex}}{\input{tikzsettings.tex}}

% TABLES
\RequirePackage{tabularx}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tabular color
\newcommand{\Tabfont}{\sffamily}
\newcommand{\Hlinecolor}{white}
\newenvironment{Tabella}{\begin{center}\bgroup
\rowcolors[]{1}{Etablightred}{Etablightred!50}\Tabfont
\arrayrulecolor{\Hlinecolor}
\setlength{\arrayrulewidth}{2pt}
\renewcommand{\arraystretch}{1.2}}{\egroup\end{center}}
\newcommand{\TabRowHead}{\rowcolor{Etabred}}
\newcommand{\TabRowHeadCor}{\cellcolor{white}}
\newcommand{\TabCellHead}{\cellcolor{Etabred}\TabRowHCol}
\newcommand{\TabRowHCol}{\color{white}\bfseries\boldmath}
\newcommand{\TabRowi}{\rowcolor{Etablightred!50}}
\newcommand{\TabRowii}{\rowcolor{Etablightred}}
\newcommand{\fanta}[1]{#1}
\newcommand{\punta}{\rule[-2.2ex]{0pt}{2.8em}}
\newcommand{\tacco}{\rule{2.2em}{0em}}
\newcommand\diag[4]{%
  \multicolumn{1}{p{#2}}{\hskip-\tabcolsep
  $\vcenter{\begin{tikzpicture}[baseline=0,anchor=south west,inner sep=#1]
  \path[use as bounding box] (0,0) rectangle (#2+2\tabcolsep,\baselineskip);
  \node[minimum width={#2+2\tabcolsep},minimum height=\baselineskip+\extrarowheight] (box) {};
  \draw (box.north west) -- (box.south east);
  \node[anchor=south west] at (box.south west) {#3};
  \node[anchor=north east] at (box.north east) {#4};
 \end{tikzpicture}}$\hskip-\tabcolsep}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Math scheme
\newcommand{\nodo}[2]{\tikz[remember picture,inner sep=2pt,outer sep=1pt]{\node (#1) {\small$#2$};}}
\newcommand{\frowo}{\TabRowii}
\newcommand{\frowe}{\TabRowi}
\newenvironment{ftab}[2][]{\begin{center}\bgroup\small%
\setlength{\tabcolsep}{1ex}%
\renewcommand{\arraystretch}{1.2}%
\arrayrulecolor{\Hlinecolor}%
\setlength{\arrayrulewidth}{2pt}%
\ifthenelse{\equal{#1}{}}%
{\begin{tabular}{>{$}l<{$}|*{#2}{>{$}c<{$}}}}%
{\begin{tabular}{>{$}l<{$}|*{#2}{>{\hspace{-#1ex}$}c<{$\hspace{-#1ex}}}}}
}{\end{tabular}\egroup\end{center}}

\newenvironment{flink}{\bgroup\setlength{\parindent}{0pt}%
\begin{tikzpicture}[remember picture,overlay,line width=0.3pt]}{\end{tikzpicture}\egroup}
\newcommand{\dropsign}[1]{\smash{\llap{\raisebox{-.5\normalbaselineskip}{$#1$\hspace{2\arraycolsep}}}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General layout
\RequirePackage{ifthen}
\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{\fancyhf{}}
\newcommand{\Efancyhf}{\fancypagestyle{chapters}{\fancyhf{}%
\rhead{\ifthenelse{\isodd{\thepage}{}}{%
\tikz[remember picture,overlay]{%
\fill[EClightred] ([shift={(2mm,2mm)}]current page.north east) rectangle ([shift={(-50mm,-13.2mm)}]current page.north east);
\fill[white] ([shift={(-30mm,0mm)}]current page.north east) rectangle ([shift={(-30.5mm,-13.2mm)}]current page.north east);
\draw[ECgray,line width=0.4mm] ([shift={(2mm,2mm)}]current page.north east) rectangle ([shift={(-50mm,-13.2mm)}]current page.north east);
\node[ECred,anchor=base,inner sep=0pt] at ([shift={(-13mm,-9mm)}]current page.north east) {\huge\textsf{\textbf{\strut\thechapter}}};
\node[black,anchor=base,inner sep=0pt] at ([shift={(-40.2mm,-9mm)}]current page.north east) {\textsf{\textbf{\strut\thepage}}};
\node[ECred,anchor=west,inner sep=0pt] at ([shift={(13mm,-13.2mm)}]current page.north west) {\small\textsf{\textbf{\strut\nouppercase{\rightmark}}}};}
}{%
\tikz[remember picture,overlay]{%
\fill[EClightred] ([shift={(-2mm,-21.6mm)}]current page.north west) rectangle ([shift={(10mm,-32.6mm)}]current page.north west);
\node[white,anchor=center,inner sep=0pt] at ([shift={(5mm,-26.6mm)}]current page.north west) {\LARGE\textsf{\textbf{\strut\thechapter}}};
\node[ECred,anchor=west,inner sep=0pt] at ([shift={(13mm,-13.2mm)}]current page.north west) {\small\textsf{\textbf{\strut\thepage\hspace{3em}\nouppercase{\leftmark}}}};}
}}}
\fancypagestyle{fancyETOC}{\fancyhf{}%
\rhead{\ifthenelse{\isodd{\thepage}{}}{%
\tikz[remember picture,overlay]{%
\fill[EClightred] ([shift={(2mm,2mm)}]current page.north east) rectangle ([shift={(-50mm,-13.2mm)}]current page.north east);
\fill[white] ([shift={(-30mm,0mm)}]current page.north east) rectangle ([shift={(-30.5mm,-13.2mm)}]current page.north east);
\draw[ECgray,line width=0.4mm] ([shift={(2mm,2mm)}]current page.north east) rectangle ([shift={(-50mm,-13.2mm)}]current page.north east);
\node[black,anchor=base,inner sep=0pt] at ([shift={(-40.2mm,-9mm)}]current page.north east) {\textsf{\textbf{\strut\Roman{page}}}};
}}{%
\tikz[remember picture,overlay]{%
\node[ECred,anchor=west,inner sep=0pt] at ([shift={(13mm,-13.2mm)}]current page.north west) {\small\textsf{\textbf{\strut\Roman{page}\hspace{3em}\ETOCname}}};}
}}}
}% end fancy macros

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Eric's Table of contents
% 1: ch, se or sse, 2: chapter number, 3: numbering, 4: title, 5: the page
\newcommand{\ETOC}[5]{\immediate\write\finaltoc{\unexpanded{\EFTOC{#1}{#2}{#3}{#4}{#5}}}}
\newcommand{\EFTOC}[5]{}
\newcommand{\writeETOC}[3]{\immediate\write\temptoc{\string\ETOC\string{#1\string}\string{\thechapter\string}\string{#2\string}\string{\unexpanded{#3}\string}\string{\thepage\string}}}
\newcommand{\ETOCname}{Table des matières}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sectioning
\RequirePackage[explicit]{titlesec}

\newcommand{\Ebgch}{\tikz[remember picture,overlay]{%
\fill[top color=ECred!30,bottom color=EClightred,draw=EClightred,line width=0pt] ([yshift={-0.75\paperheight}]current page.north west) rectangle (current page.north east);
\fill[bottom color=ECred!30,top color=EClightred,draw=EClightred,line width=0pt] ([yshift={-0.75\paperheight}]current page.north west) rectangle (current page.south east);
%
\fill[white] ([shift={(2mm,2mm)}]current page.north east) rectangle ([shift={(-50mm,-13.2mm)}]current page.north east);
\fill[ECred!30] ([shift={(-30mm,0mm)}]current page.north east) rectangle ([shift={(-30.5mm,-13.2mm)}]current page.north east);
\node[ECred,anchor=base,inner sep=0pt] at ([shift={(-13mm,-9mm)}]current page.north east) {\huge\textsf{\textbf{\strut\thechapter}}};
\node[black,anchor=base,inner sep=0pt] at ([shift={(-40.2mm,-9mm)}]current page.north east) {\textsf{\textbf{\strut\thepage}}};}}


\newcommand{\ETOCnewpage}{\immediate\write\temptoc{\string\ETOC\string{np\string}\string{\string}\string{\string}\string{\string}\string{\string}}}

\newcommand{\PARTIE}[1]{\cleardoublepage\onecolumn\thispagestyle{empty}
\immediate\write\temptoc{\string\ETOC\string{pa\string}\string{\string}\string{\string}\string{\unexpanded{#1}\string}\string{\thepage\string}}
\strut
\vfill
\noindent
\strut\hfill\scalebox{4}{\sffamily{\bfseries\textcolor{ETred}{\strut#1}}}\\
\rule{\linewidth}{2pt}
\vfill
\strut
\vfill
\strut
\twocolumn
\clearpage
\thispagestyle{empty}
\strut
}

\titleformat{\chapter}{}{}{0em}{\writeETOC{ch}{\thechapter}{#1}%
\Ebgch
\begin{adjustwidth}{17mm}{0mm}
\textcolor{ECred}{\textsf{\textbf{\huge\strut#1\strut}}}\\
\rule{\linewidth}{2pt}\\
\IfFileExists{\jobname.eft}{\input{\jobname.eft}}{}
\end{adjustwidth}}

\newcommand{\sectionbreak}{\ifthenelse{\equal{\value{section}}{1}}{\null\clearpage}{}}

\titleformat{\section}{}{}{0em}{\writeETOC{se}{\thesection}{#1}%
\needspace{2\baselineskip}
\begin{minipage}[t]{4.5em}\raggedright\LARGE\linespread{0.8}\selectfont
\textsf{\textbf{\strut \thesection}}
\end{minipage}\begin{minipage}[t]{\linewidth-4em}\raggedright\LARGE
\textsf{\textbf{\strut#1\strut}}
\end{minipage}
\textcolor{ECred}{\rule[1ex]{\linewidth}{1.5pt}}}

\titleformat{name=\section,numberless}{}{}{0em}{\needspace{2\baselineskip}
\begin{minipage}[t]{\linewidth-4em}\raggedright\LARGE
\textsf{\textbf{\strut#1\strut}}
\end{minipage}
\textcolor{ECred}{\rule[1ex]{\linewidth}{1.5pt}}}

\titleformat{\subsection}{}{}{0em}{\writeETOC{sse}{\thesubsection}{#1}%
\needspace{2\baselineskip}
\begin{minipage}[t]{4.5em}\raggedright\Large
\textsf{\textbf{\strut\thesubsection}}
\end{minipage}\begin{minipage}[t]{\linewidth-4em}\raggedright\Large\linespread{0.8}\selectfont
\textsf{\textbf{\strut#1\strut}}
\end{minipage}
\textcolor{black}{\rule[1.5ex]{\linewidth}{1pt}}}

\titleformat{name=\subsection,numberless}{}{}{0em}{\needspace{2\baselineskip}
\begin{minipage}[t]{\linewidth-4em}\raggedright\Large\linespread{0.8}\selectfont
\textsf{\textbf{\strut#1\strut}}
\end{minipage}
\textcolor{black}{\rule[1.5ex]{\linewidth}{1pt}}}

\titleformat{\subsubsection}{}{}{0em}{\begin{minipage}[t]{\linewidth}\raggedright\large\linespread{0.8}\selectfont
\textsf{\textbf{\strut#1\strut}}
\end{minipage}
\textcolor{black}{\rule[1.5ex]{\linewidth}{0.5pt}}}

\titleformat{name=\subsubsection,numberless}{}{}{0em}{\begin{minipage}[t]{\linewidth}\raggedright\large\linespread{0.8}\selectfont
\textsf{\textbf{\strut#1\strut}}
\end{minipage}
\textcolor{black}{\rule[1.5ex]{\linewidth}{0.5pt}}}

\titleformat{\paragraph}{}{}{0em}{\begin{minipage}[t]{\linewidth}\raggedright\linespread{0.8}\selectfont
\textsf{\textbf{\strut#1}}
\end{minipage}}

\titlespacing*{\chapter}{0pt}{-\baselineskip}{\baselineskip}
\titlespacing*{\section}{0pt}{2\baselineskip}{0.5\baselineskip}
\titlespacing*{\subsection}{0pt}{2\baselineskip}{0\baselineskip}
\titlespacing*{\subsubsection}{0pt}{\baselineskip}{0\baselineskip}
\titlespacing*{\paragraph}{0pt}{\baselineskip}{0.5\baselineskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% itemize
\RequirePackage{enumitem}
\setlist{leftmargin=4ex,topsep=2ex,nosep}
\setlist[itemize,1]{label=\textcolor{ECred}{$\blacksquare$}}
\setlist[itemize,2]{label=\textcolor{ECred!75}{$\blacksquare$}}
\setlist[itemize,3]{label=\textcolor{ECred!50}{$\blacksquare$}}
\setlist[enumerate,1]{label={\color{ECred}\sffamily\bfseries\arabic*.}}
\setlist[enumerate,2]{label={\color{ECred}\sffamily\bfseries\roman*.}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% siunits
\RequirePackage{siunitx}
\sisetup{quotient-mode=fraction,output-decimal-marker = {,}}
\DeclareSIUnit\anne{année}
\DeclareSIUnit\al{al}
\DeclareSIUnit\lightyear{ly}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NEW commands and environments
\RequirePackage{needspace}
\RequirePackage{changepage}
\RequirePackage[framemethod=TikZ]{mdframed}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercice
\newcommand{\printquestion}{}
\newcommand{\printsolution}{}
\newcommand{\Question}[1]{\renewcommand{\printquestion}{\unexpanded{#1}}}
\newcommand{\Solution}[1]{\renewcommand{\printsolution}{\unexpanded{#1}}}
\newenvironment{exercize}{\needspace{5\baselineskip}
\bgroup\setlength{\parindent}{0pt}%
\renewcommand{\Hlinecolor}{EClightred}%
\renewcommand{\TabRowHead}{\rowcolor{Etabred}}%
\renewcommand{\TabRowHeadCor}{\cellcolor{EClightred}}%
\renewcommand{\TabRowHCol}{\color{white}\bfseries\boldmath}%
\renewcommand{\TabRowi}{\rowcolor{EClightred!50}}%
\renewcommand{\TabRowii}{\rowcolor{EClightred}}%
\setlength{\parindent}{0pt}}{\begin{mdframed}[default,backgroundcolor=EClightred,bottomline=false,topline=false,rightline=false,leftline=false,%
frametitlealignment=\raggedleft,%
frametitle={\textcolor{white}{\textsf{\textbf{Exercice}}}},skipabove=1em,skipbelow=1em,%
frametitlerulewidth=2pt,frametitlerule=true,frametitlerulecolor=white,frametitlebackgroundcolor=ETred]%
\begin{adjustwidth}{0mm}{0mm}
%\strut\textsf{\textbf{\large Exercice}}\\
\strut\textsf{\printquestion}

\vspace{\baselineskip}
\strut\hfill\textsf{\textbf{Solution}}\\
\textcolor{white}{\rule[2ex]{\linewidth}{1pt}}\\[-2em]

\strut\textsf{\printsolution}
\end{adjustwidth}\end{mdframed}\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{Definition}[1][]{\needspace{5\baselineskip}
\bgroup\setlength{\parindent}{0pt}%
\begin{mdframed}[default,frametitlealignment=\raggedleft,%
frametitle={\textcolor{white}{\textsf{\textbf{Définition%
\ifthenelse{\equal{#1}{}}{.}{:~#1}}}}},%
skipabove=1em,skipbelow=0em,frametitlerulewidth=2pt,frametitlerule=true,frametitlerulecolor=white,frametitlebackgroundcolor=ETred,%
backgroundcolor=ETlightred,topline=false,bottomline=false,leftline=false,rightline=false]%
\sf}{\end{mdframed}\egroup\vspace{-0.5\baselineskip}}

\newenvironment{Defkind}[1][]{\needspace{5\baselineskip}
\bgroup\setlength{\parindent}{0pt}%
\begin{mdframed}[default,frametitlealignment=\raggedleft,%
frametitle={\textcolor{white}{\textsf{\textbf{#1}}}},%
skipabove=1em,skipbelow=0em,frametitlerulewidth=2pt,frametitlerule=true,frametitlerulecolor=white,frametitlebackgroundcolor=ETred,%
backgroundcolor=ETlightred,topline=false,bottomline=false,leftline=false,rightline=false]%
\sf}{\end{mdframed}\egroup\vspace{-0.5\baselineskip}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{Exemple}[1][]{\needspace{5\baselineskip}
\bgroup\setlength{\parindent}{0pt}%
\renewcommand{\Hlinecolor}{EClightred}%
\renewcommand{\TabRowHead}{\rowcolor{Etabred}}%
\renewcommand{\TabRowHeadCor}{\cellcolor{EClightred}}%
\renewcommand{\TabRowHCol}{\color{white}\bfseries\boldmath}%
\renewcommand{\TabRowi}{\rowcolor{EClightred!50}}%
\renewcommand{\TabRowii}{\rowcolor{EClightred}}%
\begin{mdframed}[default,frametitlealignment=\raggedleft,%
frametitle={\textcolor{white}{\textsf{\textbf{Exemple\ifthenelse{\equal{#1}{}}{.}{:~#1}}}}},%
skipabove=1em,skipbelow=1em,frametitlerulewidth=2pt,frametitlerule=true,frametitlerulecolor=white,frametitlebackgroundcolor=ETred,%
backgroundcolor=ETlightred,topline=false,bottomline=false,leftline=false,rightline=false]%
\sf}{\end{mdframed}\egroup}

\newenvironment{Exemples}[1][]{\needspace{5\baselineskip}
\bgroup\setlength{\parindent}{0pt}%
\begin{mdframed}[default,frametitlealignment=\raggedleft,%
frametitle={\textcolor{white}{\textsf{\textbf{Exemples\ifthenelse{\equal{#1}{}}{.}{:~#1}}}}},%
skipabove=1em,skipbelow=1em,frametitlerulewidth=2pt,frametitlerule=true,frametitlerulecolor=white,frametitlebackgroundcolor=ETred,%
backgroundcolor=ETlightred,topline=false,bottomline=false,leftline=false,rightline=false]%
\sf}{\end{mdframed}\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Teorema like
\newtheorem{enunciato}{Enoncé}
\newtheorem{teorema}{Théorème}

\newcommand{\teoremalike}[3]{\newcounter{#2}[chapter]
\newenvironment{#1}[1][]{\refstepcounter{#2}\bgroup\setlength{\parindent}{0pt}%
\begin{mdframed}[default,frametitlealignment=\raggedleft,%
frametitle={\textcolor{white}{\textsf{\textbf{#3~\thechapter.\arabic{#2}\ifthenelse{\equal{##1}{}}{.}{:~##1}}}}},%
skipabove=1em,skipbelow=1em,frametitlerulewidth=2pt,frametitlerule=true,frametitlerulecolor=white,frametitlebackgroundcolor=ETred,%
backgroundcolor=ETlightred,topline=false,bottomline=false,leftline=false,rightline=false]%
\sf}{\end{mdframed}\egroup}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\teoremalike{Enonce}{enonce}{Enoncé}
\teoremalike{Teorema}{theorema}{Théorème}
%\teoremalike{Theoreme}{theorema}{Théorème}
\teoremalike{Lemme}{lemme}{Lemme}
\teoremalike{Corollaire}{corollaire}{Corollaire}
\teoremalike{Proposition}{proposition}{Proposition}
\teoremalike{Rappel}{rappel}{Rappel}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{Remarque}[1][]{\needspace{5\baselineskip}
\bgroup
\setlist{nosep}\setlength{\parindent}{0em}%
\begin{mdframed}[default,topline=false,bottomline=false,leftline=true,rightline=false,linecolor=ECred,linewidth=2pt]%
\sf
\textbf{Remarque\ifthenelse{\equal{#1}{}}{.\\}{:~#1.\\}}}{\end{mdframed}\egroup}

\newenvironment{Remarquekind}{\needspace{5\baselineskip}
\bgroup
\setlist{nosep}\setlength{\parindent}{0em}%
\begin{mdframed}[default,topline=false,bottomline=false,leftline=true,rightline=false,linecolor=ECred,linewidth=2pt]%
\sf}{\end{mdframed}\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{Conclusion}{\needspace{5\baselineskip}
\bgroup
\setlist{nosep}\setlength{\parindent}{0em}%
\begin{mdframed}[topline=true,bottomline=true,leftline=true,rightline=true,linecolor=ECred,linewidth=2pt]%
\sf
\textbf{Conclusion:}~}{\end{mdframed}\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{NB}{\needspace{3\baselineskip}
\bgroup\noindent\textbf{NB:}~\it}{\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Boldo
\newcommand{\boldo}[1]{\textcolor{ETred}{\textbf{#1}}}
\newcommand{\boldoit}[1]{\textcolor{ETred}{\textit{#1}}}
\newcommand{\boldosf}[1]{\textcolor{ETred}{\textsf{\textbf{#1}}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure
\newcommand{\Figure}[1]{\null\hfill\boldosf{Figure~#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\bgeq}[1]{\bgroup%
\setlength{\abovedisplayskip}{0pt}%
\setlength{\belowdisplayskip}{0pt}%
\setlength{\abovedisplayshortskip}{0pt}%
\setlength{\belowdisplayshortskip}{0pt}%
\begin{mdframed}[default,skipabove=1ex,skipbelow=0ex,backgroundcolor=ETlightred,%
topline=false,bottomline=false,leftline=false,rightline=false,innermargin=0ex]#1\end{mdframed}\egroup\noindent}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\titoletto}[1]{\needspace{4\baselineskip}
\vspace{\baselineskip}
\begin{mdframed}[default,skipabove=1em,skipbelow=0em,backgroundcolor=ETlightred,%
topline=false,bottomline=false,leftline=false,rightline=false]\raggedleft\textbf{\strut#1\strut}\end{mdframed}\vspace{-0.5\baselineskip}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcounter{TOTexercise}
\setcounter{TOTexercise}{0}
\newcounter{esercizio}[chapter]
\setcounter{esercizio}{0}
\newenvironment{esercizio}[2]{\needspace{6\baselineskip}
\refstepcounter{TOTexercise}\refstepcounter{esercizio}\renewcommand{\Tabfont}{}\renewcommand{\fanta}[1]{}\renewcommand{\bgeq}[1]{##1}%
\setcounter{figcount}{0}\setcounter{equation}{0}%
\bgroup\setlist[itemize]{nosep,leftmargin=*,label=\textcolor{ECred}{$\blacksquare$}}%
\renewenvironment{Remarque}[1][]{\bgroup\boldosf{Remarque:~}}{\egroup}%
\renewenvironment{Conclusion}[1][]{\bgroup\boldosf{Conclusion:~}}{\egroup}%
\setlist[enumerate]{nosep,wide,labelwidth=!,labelindent=0pt}%
\setlist[enumerate,1]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\theesercizio.\arabic*.}}%
\setlist[enumerate,2]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\arabic*.}}%
\setlist[enumerate,3]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\arabic*.}}%
\setlist[enumerate,4]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\arabic*.}}%
\setlength{\parindent}{0em}%
\begin{mdframed}[default,backgroundcolor=white,bottomline=false,topline=true,rightline=false,leftline=false,linecolor=ETred,linewidth=0.5,
frametitle={\strut\boldo{Exercice~\theesercizio.}\label{#1}},skipabove=0em,skipbelow=0em,%
frametitlerulewidth=0.3pt,frametitlerule=true,frametitlerulecolor=ETred,frametitlebackgroundcolor=EClightred]\exsofont
}{\end{mdframed}\egroup}

\newcommand{\subesercizio}[1]{\vspace{2ex}\noindent\boldo{#1}\\
\textcolor{ETred}{\rule[1ex]{\linewidth}{0.5pt}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{soluzione}[1]{\needspace{6\baselineskip}
\renewcommand{\Tabfont}{}%
\setcounter{figcount}{0}\setcounter{equation}{0}\renewcommand{\fanta}[1]{##1}\renewcommand{\bgeq}[1]{##1}%
\bgroup\setlist[itemize]{nosep,leftmargin=*,label=\textcolor{ECred}{$\blacksquare$}}%
\renewenvironment{Remarque}[1][]{\bgroup\boldosf{Remarque:~}}{\egroup}%
\renewenvironment{Conclusion}[1][]{\bgroup\boldosf{Conclusion:~}}{\egroup}%
\setlist[enumerate]{nosep,wide,labelwidth=!,labelindent=0pt}%
\setlist[enumerate,1]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\ref{#1}.\arabic*.}}%
\setlist[enumerate,2]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\arabic*.}}%
\setlist[enumerate,3]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\arabic*.}}%
\setlist[enumerate,4]{nosep,wide,labelwidth=!,labelindent=0pt,label*={\color{ECred}\bfseries\arabic*.}}%
\setlength{\parindent}{0em}%
\begin{mdframed}[default,backgroundcolor=white,bottomline=false,topline=true,rightline=false,leftline=false,linecolor=ETred,linewidth=0.5,
frametitle={\strut\boldo{Solution~\ref{#1}. (p.~\pageref{#1})}\label{sol#1}},skipabove=0em,skipbelow=1ex,%
frametitlerulewidth=0.3pt,frametitlerule=true,frametitlerulecolor=ETred,frametitlebackgroundcolor=EClightred,]\exsofont}{\end{mdframed}\egroup}

\newcounter{figcount}[chapter]
\renewcommand{\thefigcount}{\arabic{chapter}.\arabic{figcount}}
\newcounter{subfigcount}[figcount]
\renewcommand{\thesubfigcount}{\arabic{chapter}.\arabic{figcount}\alph{subfigcount}}
\newcounter{TOTfigures}
\setcounter{TOTfigures}{0}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{figura}[1]{\needspace{2\baselineskip}
\refstepcounter{TOTfigures}\refstepcounter{figcount}\bgroup%
%\setlength\topsep{0ex}\setlength\parskip{0ex}
\vspace{2ex}
\setlength\parindent{0pt}%
\begin{minipage}{\linewidth}
\centering\null\hfill\boldosf{Figure~\thefigcount}\label{#1}\\}{\end{minipage}\egroup\vspace{1em}}

\newenvironment{subfigura}[2]{\needspace{2\baselineskip}
\refstepcounter{TOTfigures}\refstepcounter{figcount}\bgroup\setlength\parindent{0pt}%
%\setlength\topsep{0ex}\setlength\parskip{0ex}
\vspace{2ex}
\begin{minipage}{\linewidth}
\refstepcounter{subfigcount}\boldosf{Figure~\thesubfigcount}\label{#1}\hfill\refstepcounter{subfigcount}\boldosf{Figure~\thesubfigcount}\label{#2}\\}{\end{minipage}\egroup\vspace{1em}}

\newenvironment{esfigura}{\needspace{2\baselineskip}
\refstepcounter{TOTfigures}\bgroup\setlength{\parindent}{0pt}%
%\setlength\topsep{0ex}\setlength\parskip{0ex}
\vspace{1ex}
\begin{minipage}{\linewidth}\centering}{\end{minipage}\egroup\vspace{1ex}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{Esercizi}{\newpage\bgroup\setlength\parindent{0pt}%
\renewcommand{\thefigcount}{E\arabic{chapter}.\arabic{figcount}}
\renewcommand{\theequation}{E\arabic{chapter}.\arabic{equation}}
\section{Enoncés des exercices et problèmes}
}{\egroup}

\newenvironment{Soluzioni}{\newpage\bgroup\setlength\parindent{0pt}%
\renewcommand{\thefigcount}{S\arabic{chapter}.\arabic{figcount}}
\renewcommand{\theequation}{S\arabic{chapter}.\arabic{equation}}
\section{Solutions des exercices et problèmes}
}{\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Layout warning control
\hfuzz=3em
\vfuzz=3em
\hbadness=\maxdimen
\vbadness=\maxdimen
\binoppenalty=\maxdimen
\relpenalty=\maxdimen

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\cappath}{Chapters/chapter}
\newcommand{\capitoli}[3][]{\ifthenelse{\equal{#1}{n}}{%
\typeout{ }
\typeout{*****************************************************************************}
\typeout{******* Chapter #2: No output *******}
\typeout{*****************************************************************************}
\typeout{ }}{%
\setcounter{chapter}{#2-1}\chapter{#3}\label{Ch#2}
\ifthenelse{\equal{#1}{t}}{%
\typeout{ }
\typeout{*****************************************************************************}
\typeout{******* Chapter #2: Theory *******}
\typeout{*****************************************************************************}
\typeout{ }
\input{\cappath#2/ch#2.tex}}{%
\ifthenelse{\equal{#1}{e}}{%
\typeout{ }
\typeout{*****************************************************************************}
\typeout{******* Chapter #2: Exercize *******}
\typeout{*****************************************************************************}
\typeout{ }
\begin{Esercizi}\input{\cappath#2/chex#2.tex}\end{Esercizi}}{%
\ifthenelse{\equal{#1}{s}}{%
\typeout{ }
\typeout{*****************************************************************************}
\typeout{******* Chapter #2: Solution *******}
\typeout{*****************************************************************************}
\typeout{ }
\begin{Soluzioni}\input{\cappath#2/chso#2.tex}\end{Soluzioni}}{%
\typeout{ }
\typeout{*****************************************************************************}
\typeout{******* Chapter #2: Theory *******}
\typeout{*****************************************************************************}
\typeout{ }
\input{\cappath#2/ch#2.tex}
\typeout{ }
\typeout{*****************************************************************************}
\typeout{******* Chapter #2: Exercize *******}
\typeout{*****************************************************************************}
\typeout{ }
\begin{Esercizi}\input{\cappath#2/chex#2.tex}\end{Esercizi}
\typeout{ }
\typeout{*****************************************************************************}
\typeout{******* Chapter #2: Solution *******}
\typeout{*****************************************************************************}
\typeout{ }
\begin{Soluzioni}\input{\cappath#2/chso#2.tex}\end{Soluzioni}}}}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1: ch, se or sse, 2: chapter number, 3: numbering, 4: title, 5: the page
\newlength{\EMTOCnum}\setlength{\EMTOCnum}{3em}
\newlength{\EMTOCpag}\setlength{\EMTOCpag}{1.5em}
\newlength{\EmTOCnum}\setlength{\EmTOCnum}{3em}
\newlength{\EmTOCpag}\setlength{\EmTOCpag}{1.4em}
\makeatletter
\newcommand{\Dotfill}{\leavevmode\leaders \hb@xt@ .75em{\hss .\hss }\hfill \kern \z@}
\makeatother

\newcommand{\ERICTOC}{\newgeometry{left=30mm,right=13mm,top=21.3mm,bottom=12.7mm}
\pagestyle{fancyETOC}
\renewcommand{\EFTOC}[5]{\bgroup%
\renewcommand{\footnote}[1]{}\setlength{\parindent}{0pt}\setlength{\tabcolsep}{0pt}%
\ifthenelse{\equal{##1}{np}}{\newpage}{% <- newpage
\ifthenelse{\equal{##1}{pa}}{% Part
\needspace{2\baselineskip}
\null
\vspace{0\baselineskip}
\begin{minipage}[b]{\linewidth-\EMTOCpag}\raggedright\sloppy\sffamily{\Large\bfseries\boldmath\strut\textcolor{ETred}{##4}}\Dotfill\strut\end{minipage}\begin{minipage}[b]{\EMTOCpag}\raggedleft\sffamily\strut##5\end{minipage}\\[0pt]
}{\ifthenelse{\equal{##1}{ch}}{% Chapter
\needspace{2\baselineskip}
\null
\vspace{0\baselineskip}
\begin{tabular}[b]{ll}
\begin{minipage}[t]{\EMTOCnum}\raggedright\textsf{\strut##3}\end{minipage}&\begin{minipage}[t]{\linewidth-\EMTOCpag-\EMTOCnum}\raggedright\sloppy\sffamily{\large\bfseries\boldmath\strut\textcolor{ETred}{##4}}\Dotfill\strut\end{minipage}\\[0pt]
\end{tabular}\begin{tabular}[b]{l}
\begin{minipage}[b]{\EMTOCpag}\raggedleft\sffamily\strut##5\end{minipage}\\[0pt]
\end{tabular}
}{\ifthenelse{\equal{##1}{se}}{% Section
\begin{tabular}[b]{ll}
\begin{minipage}[t]{\EMTOCnum}\raggedright\textsf{\strut##3}\end{minipage}&\begin{minipage}[t]{\linewidth-\EMTOCpag-\EMTOCnum}\raggedright\sloppy\sffamily{\bfseries\boldmath\strut##4}\Dotfill\strut\end{minipage}\\[0pt]
\end{tabular}\begin{tabular}[b]{l}
\begin{minipage}[b]{\EMTOCpag}\raggedleft\sffamily\strut##5\end{minipage}\\[0pt]
\end{tabular}
}{% Sub section
\begin{tabular}[b]{ll}
\begin{minipage}[t]{\EMTOCnum}\raggedright\textsf{\strut##3}\end{minipage}&\begin{minipage}[t]{\linewidth-\EMTOCpag-\EMTOCnum}\raggedright\sloppy\sffamily\strut##4\Dotfill\strut\end{minipage}\\[0pt]
\end{tabular}\begin{tabular}[b]{l}
\begin{minipage}[b]{\EMTOCpag}\raggedleft\sffamily\strut##5\end{minipage}\\[0pt]
\end{tabular}
}}}}\egroup}
\setcounter{page}{1}%
\onecolumn
\bgroup\setlength{\parindent}{0pt}
\begin{adjustwidth}{0mm}{0mm}
\textcolor{ECred}{\textsf{\textbf{\huge\strut\ETOCname}}}\\
\rule{\linewidth}{2pt}\\
\end{adjustwidth}
\IfFileExists{\jobname.eft}{\input{\jobname.eft}}{}
\egroup}

\newcommand{\ERICresetminiTOC}{\clearpage\restoregeometry
\twocolumn
\pagestyle{chapters}
\setcounter{page}{1}%
\renewcommand{\EFTOC}[5]{\bgroup%
\renewcommand{\footnote}[1]{}\setlength{\parindent}{0pt}\setlength{\tabcolsep}{0pt}%
\ifthenelse{\equal{##2}{\thechapter}}{%
\ifthenelse{\equal{##1}{ch}}{}{%
\ifthenelse{\equal{##1}{se}}{% Section

\vspace{0\baselineskip}
\begin{tabular}[b]{ll}
\begin{minipage}[t]{\EmTOCnum}\raggedright\textsf{\strut##3}\end{minipage}&\begin{minipage}[t]{\linewidth-\EmTOCpag-\EmTOCnum}\raggedright\sloppy\sffamily{\large\bfseries\boldmath\strut\textcolor{ETred}{##4}}\Dotfill\strut\end{minipage}\\[0pt]
\end{tabular}\begin{tabular}[b]{l}
\begin{minipage}[b]{\EmTOCpag}\raggedleft\sffamily\strut##5\end{minipage}\\[0pt]
\end{tabular}
}{% Sub section
\begin{tabular}[b]{ll}
\begin{minipage}[t]{\EmTOCnum}\raggedright\textsf{\strut##3}\end{minipage}&\begin{minipage}[t]{\linewidth-\EmTOCpag-\EmTOCnum}\raggedright\sloppy\sffamily{\strut##4}\Dotfill\strut\end{minipage}\\[0pt]
\end{tabular}\begin{tabular}[b]{l}
\begin{minipage}[b]{\EmTOCpag}\raggedleft\sffamily\strut##5\end{minipage}\\[0pt]
\end{tabular}
}}}{}\egroup}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Options
%\DeclareOption{brutta}{\usepackage{syntonly}\syntaxonly}
\DeclareOption{notoc}{\renewcommand{\ERICTOC}{}}
\DeclareOption{brutta}{\renewcommand{\Efancyhf}{\fancypagestyle{chapters}{\fancyhf{}%
\lhead{--~This is a draft~--\hfill--~\jobname.tex -- Chapter~\thechapter, Page~\thepage~--}}
\fancypagestyle{fancyETOC}{\fancyhf{}}}
\renewcommand{\Ebgch}{}}
\ProcessOptions\relax

\newcommand{\Ericbookyear}{}
\newcommand{\BookYear}[1]{\renewcommand{\Ericbookyear}{#1}}
\newcommand{\EricbookISBN}{}
\newcommand{\BookISBN}[1]{\renewcommand{\EricbookISBN}{#1}}
\newcommand{\Ericauthors}{}
\newcommand{\Authors}[1]{\renewcommand{\Ericauthors}{#1}}
\newcommand{\Ericversion}{}
\newcommand{\Version}[1]{\renewcommand{\Ericversion}{#1}}
\newcommand{\Ericdate}{}
\newcommand{\Date}[1]{\renewcommand{\Ericdate}{#1}}
\newcommand{\Ericbooktitle}{}
\newcommand{\Booktitle}[1]{\renewcommand{\Ericbooktitle}{#1}}
\newcommand{\Ericbooksubtitle}{}
\newcommand{\Booksubtitle}[1]{\renewcommand{\Ericbooksubtitle}{#1}}
\newcommand{\Ericbooksubsubtitle}{}
\newcommand{\Booksubsubtitle}[1]{\renewcommand{\Ericbooksubsubtitle}{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cover page
\newcommand{\Coverpage}{\thispagestyle{empty}
\begin{adjustwidth}{10mm}{10mm}\raggedright
\strut\hfill\scalebox{2}{\Ericbooksubsubtitle}\\

\vspace{7\baselineskip}
\scalebox{2}{Eric Simo, Editeur}\\[1.5\baselineskip]
\scalebox{4}{\textcolor{ETred}{\bfseries\MakeUppercase\Ericbooktitle}}\\[\baselineskip]
\scalebox{3}{\textcolor{ETred}{\Ericbooksubtitle}}\\[2\baselineskip]
\scalebox{1.5}{\Ericauthors}\\

\vspace{7\baselineskip}
\scalebox{1.5}{\strut Avec \totalTOTfigures\ schémas d'illustration}\\
\scalebox{1.5}{\strut et \totalTOTexercises\ exercices corrigés}

\vfill
\begin{center}
\includegraphics[width=0.4\linewidth]{./frontmatter/SimoLogo.pdf}
\end{center}
\strut
\end{adjustwidth}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colophon page
\newcommand{\Ericbooktitlecolophon}{}
\newcommand{\Booktitlecolophon}[1]{\renewcommand{\Ericbooktitlecolophon}{#1}}
\newcommand{\Ericbookauthorscolophon}{}
\newcommand{\Bookauthorscolophon}[1]{\renewcommand{\Ericbookauthorscolophon}{#1}}
\newcommand{\Ericbookcontributorscolophon}{}
\newcommand{\Bookcontributorscolophon}[1]{\renewcommand{\Ericbookcontributorscolophon}{#1}}
\newcommand{\Ericbookgraphiccovercolophon}{}
\newcommand{\Bookgraphiccovercolophon}[1]{\renewcommand{\Ericbookgraphiccovercolophon}{#1}}
\newcommand{\Ericbookthemecolophon}{}
\newcommand{\Bookthemecolophon}[1]{\renewcommand{\Ericbookthemecolophon}{#1}}

\newcommand{\Colophonpage}{\thispagestyle{empty}
\begin{adjustwidth}{10mm}{10mm}\setlength{\parindent}{0pt}
Eric Simo, Msc.-Ing. TU-BS (Editeur)\\
An den Äckern 2\\
31224 Peine\\
Allemagne\\
kuateric@gmail.com\\

\vfill
\strut\Ericbooktitlecolophon\strut\\[\baselineskip]

\strut Auteurs:~\Ericbookauthorscolophon\strut\\[\baselineskip]

\strut Contributions:~\Ericbookcontributorscolophon\strut\\

\strut Conception graphique des couvertures:~\Ericbookgraphiccovercolophon\strut\\
\strut Thème artistique des couvertures~\Ericbookyear:~\Ericbookthemecolophon\strut\\[\baselineskip]

ISBN~\EricbookISBN~\textbullet~Maison d'Edition SIMO~\textbullet~Bandjoun Brunswick Belfast Rotterdam~\textbullet~\Ericbookyear\\[\baselineskip]

Sous réserve des exceptions légales, toute représentation ou reproduction intégrale ou partielle, faite, par quelque procédé que ce soit sans le consentement de l'auteur ou de ses ayants droit, est illicite et constitue une contrefaçon sanctionnée par le Code de la Propriété Intellectuelle. En cas d'utilisation aux fins de vente, de location, de publicité ou de promotion, l'accord de l'auteur ou des ayants droit est nécessaire.\\[\baselineskip]

Site Internet: www.simo.education\\[\baselineskip]

\strut
\end{adjustwidth}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Intro page
\newcommand{\Intropage}{\thispagestyle{empty}
\begin{adjustwidth}{10mm}{10mm}
\textcolor{ECred}{\textsf{\textbf{\huge\strut Avant-propos}}}\\
\rule{\linewidth}{2pt}\\
\end{adjustwidth}
\begin{adjustwidth}{10mm}{10mm}
\input{./Chapters/Intro/intro.tex}
\end{adjustwidth}
\clearpage
\thispagestyle{empty}\strut
\clearpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% At begin document
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{\normalsize\Efancyhf%
\onecolumn\Coverpage\twocolumn
\clearpage
\onecolumn\Colophonpage\twocolumn
\clearpage
\onecolumn\Intropage\twocolumn
\clearpage
% TOC
\ERICTOC
\ifthenelse{\isodd{\thepage}}{\clearpage\strut}{}
% Begin Document
\ERICresetminiTOC
}% end begin document
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% At end document
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\AtEndDocument{\ifthenelse{\isodd{\thepage}}{\clearpage\strut}{}
\immediate\closeout\temptoc
\newwrite\finaltoc
\immediate\openout\finaltoc=\jobname.eft
\input \jobname.ett
\immediate\closeout\finaltoc
% Total exercise
\write\@auxout{\protect\total@TOTexercises{\arabic{TOTexercise}}}
% Total figures
\write\@auxout{\protect\total@TOTfigures{\arabic{TOTfigures}}}
}
% end end document
\def\total@TOTexercises#1{\global\def\totalTOTexercises{#1}}
\def\total@TOTfigures#1{\global\def\totalTOTfigures{#1}}
\total@TOTexercises{0}
\total@TOTfigures{0}
\makeatother
%Number of problems: \totalTOTexercises
%Number of figures: \totalTOTfigures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput