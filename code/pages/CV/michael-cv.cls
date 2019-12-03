%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% michael-cv.cls
% 
% LaTeX class template for Curriculum Vitae
% Version 1.0 (15/05/17)
% 
% Sponsor and maintainer Michael Rouba michael.rouba@roubacon.de
% Design by Andreas Wichmann wichmann@solution-scout.de
% Code by Elio. A. Farina elio.farina@gmail.com
% 
% Created under the Creative Commons "Namensnennung 3.0 DE" License.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{michael-cv}[2015/05/17 CV class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%
% Font and language %
%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[english,german]{babel}
\newcommand{\CVlang}{\selectlanguage{german}}
%\RequirePackage[default,osfigures]{opensans}

\RequirePackage[sfdefault,lf]{carlito}

\DeclareOption{english}{\renewcommand{\CVlang}{\selectlanguage{english}}}
\DeclareOption{german}{\renewcommand{\CVlang}{\selectlanguage{german}}}
\ProcessOptions

%%%%%%%%%%%
% Symbols %
%%%%%%%%%%%
\RequirePackage{marvosym}

%%%%%%%%%%
% Colors %
%%%%%%%%%%
\RequirePackage{xcolor}
\definecolor{margin}{RGB}{0,54,68}
\definecolor{titlec}{RGB}{253,89,0}
\definecolor{martex}{RGB}{166,166,166}
\definecolor{martit}{RGB}{217,217,217}
\definecolor{footer}{RGB}{32,93,111}
\definecolor{marule}{gray}{0}

%%%%%%%%%%%%%%%%%%%%%
% Units and lengths %
%%%%%%%%%%%%%%%%%%%%%
\newcommand{\CValign}{\RaggedRight}
\RequirePackage[nomessages]{fp}
\newcommand{\CVunit}{pt}
\makeatletter
\newcommand*{\getlength}[1]{\strip@pt#1}
\makeatother
\newlength{\CVinmargin}
\setlength{\CVinmargin}{2ex}
\newlength{\CVtitparlen}
\setlength{\CVtitparlen}{-\baselineskip}
\newlength{\CVpardis}
\setlength{\CVpardis}{\baselineskip}
\newlength{\CVtsdis}
\setlength{\CVtsdis}{1ex}
\newlength{\CVinfodis}
\setlength{\CVinfodis}{1ex}
\newlength{\CVpictalign}
\setlength{\CVpictalign}{0pt}
\newlength{\CVinfoalign}
\setlength{\CVinfoalign}{0pt}
\FPeval{CVleftmargin}{\getlength{\paperwidth}/9}
\FPeval{CVrightmargin}{\getlength{\paperwidth}/3}
\FPeval{CVtopmargin}{120}
\FPeval{CVheadsep}{50}
\FPeval{CVbottommargin}{50}
\FPeval{CVentry}{\getlength{\textwidth}/3}
\FPeval{CVmarginrule}{\CVrightmargin}
\FPeval{CVborder}{1}
\FPeval{CVinfobox}{\CVrightmargin}
\FPeval{CVinfoboxwidth}{\CVrightmargin-50}
\FPeval{CVtitlesep}{\CVheadsep-\CVtopmargin-12}
\FPeval{CVpictwid}{0-6.5}
\FPeval{CVxinfobox}{0-1}
\FPeval{CVyinfobox}{\CVtopmargin-20}

% Set font size
\RequirePackage{anyfontsize}
\FPeval{CVfsnorm}{10}
\FPeval{CVfstit}{11}
\FPeval{CVfssub}{12}
\FPeval{CVfshead}{16}
\FPeval{CVbsnorm}{13}
\FPeval{CVbstit}{13.3}
\FPeval{CVbssub}{14.4}
\FPeval{CVbshead}{19.2}

\newcommand{\fsnorm}{\fontsize{\CVfsnorm\CVunit}{\CVbsnorm\CVunit}\selectfont}
\newcommand{\fstit}{\fontsize{\CVfstit\CVunit}{\CVbstit\CVunit}\selectfont}
\newcommand{\fssub}{\fontsize{\CVfssub\CVunit}{\CVbssub\CVunit}\selectfont}
\newcommand{\fshead}{\fontsize{\CVfshead\CVunit}{\CVbshead\CVunit}\selectfont}

%%%%%%%%%
% Names %
%%%%%%%%%
\newcommand{\CVProfil}{Profil}
\newcommand{\CVCV}{Curriculum Vitae}
\newcommand{\CVTeleicon}{\Telefon}
\newcommand{\CVMobiicon}{\Mobilefone}
\newcommand{\CVmailicon}{\MVAt}
\newcommand{\CVmaddicon}{\MVAt}

%%%%%%%%%%%
% Margins %
%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{left=\CVleftmargin\CVunit,right=\CVrightmargin\CVunit,top=\CVtopmargin\CVunit,bottom=\CVbottommargin\CVunit,headsep=\CVheadsep\CVunit}
\setlength{\parindent}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Margin Background color %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{eso-pic}
\AddToShipoutPicture{\AtPageLowerLeft{\put(\LenToUnit{\dimexpr\paperwidth-\CVrightmargin\CVunit},0){\color{margin}\rule{\CVrightmargin\CVunit}{\LenToUnit\paperheight}}}}
\AddToShipoutPicture{\AtPageLowerLeft{\put(\LenToUnit{\dimexpr\paperwidth-\CVrightmargin\CVunit},0){\color{marule}\rule{\CVborder\CVunit}{\LenToUnit\paperheight}}}}

\DeclareOption{noborder}{\definecolor{marule}{RGB}{0,54,68}
\renewcommand{\CVpictalign}{-6.5pt}
\renewcommand{\CVpictwid}{-1}}
\DeclareOption{print}{%
\definecolor{margin}{gray}{1}
\definecolor{marule}{gray}{0.3}
\definecolor{titlec}{gray}{0.2}
\definecolor{martex}{gray}{0.3}
\definecolor{martit}{gray}{0.3}
\definecolor{footer}{gray}{0.3}
}
\ProcessOptions

%%%%%%%%%%%%
% Graphicx %
%%%%%%%%%%%%
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%%
% Headers and Footers %
%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
% no rules
\setlength{\headheight}{15pt}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\newcommand{\infoot}{\dbname}
\newcommand{\outfoot}{\dbaddr}
\newcommand{\leftfoot}{}

%%%%%%%%%%%%
% Hyperref %
%%%%%%%%%%%%
\RequirePackage{hyperref}
\hypersetup{%
pdfpagemode=UseOutlines,%
hidelinks,%
bookmarksopen=true,%
pdfdisplaydoctitle=true,%
pdfstartview=Fit,%
unicode=true,%
pdfpagelayout=OneColumn%
}

%%%%%%%%%%%%
% Database %
%%%%%%%%%%%%
% \CVname{Your name}
\newcommand{\dbname}{}\newcommand{\CVname}[1]{\renewcommand{\dbname}{#1}}
% \CVaddr{Address}
\newcommand{\dbaddr}{}\newcommand{\CVaddr}[1]{\renewcommand{\dbaddr}{#1}}
% \CVprof{Profile short description}
\newcommand{\dbprof}{}\newcommand{\CVprof}[1]{\renewcommand{\dbprof}{#1}}
% \CVpict{Picture file}
\newcommand{\dbpict}{}\newcommand{\CVpict}[1]{\renewcommand{\dbpict}{#1}}
% \CVinfo{Other informations}
\newcommand{\dbinfo}{}\newcommand{\CVinfo}[1]{\renewcommand{\dbinfo}{#1}}
% \CVtele{Telephone}
\newcommand{\dbtele}{}\newcommand{\CVtele}[1]{\renewcommand{\dbtele}{#1}}
% \CVcell{Cellular mobile phone}
\newcommand{\dbcell}{}\newcommand{\CVcell}[1]{\renewcommand{\dbcell}{#1}}
% \CVmail{e-mail}
\newcommand{\dbmail}{}\newcommand{\CVmail}[1]{\renewcommand{\dbmail}{#1}}
% \CVmail{e-madd}
\newcommand{\dbmadd}{}\newcommand{\CVmadd}[1]{\renewcommand{\dbmadd}{#1}}

%%%%%%%%%
% Title %
%%%%%%%%%
\RequirePackage{ifthen}
\RequirePackage[overlay,absolute]{textpos}
\setlength{\TPHorizModule}{1pt}
\setlength{\TPVertModule}{1pt}
\RequirePackage{changepage}

%%% CVtitle
%% Print the title and creates para environment and entry command
\newcommand{\CVtitle}{\CVlang\fsnorm%
\hypersetup{%
pdftitle={Curricul Vitae - \dbname},%
pdfauthor={\dbname},%
pdfsubject={\CVCV},%
pdfcreator={\dbname},%
pdfproducer={LaTeX2e},%
pdfkeywords={\dbprof},%
}
\fancyhfoffset[R]{\LenToUnit{\dimexpr\CVrightmargin\CVunit+\CVinmargin-3pt}}
\fancyhfoffset[L]{0pt}
\newgeometry{left=\CVleftmargin\CVunit,right=\CVrightmargin\CVunit,top=\CVtopmargin\CVunit,bottom=\CVbottommargin\CVunit,headsep=\CVheadsep\CVunit}

\fancypagestyle{titlepage}{\fancyhf{}%
\fancyfoot[R]{\parbox[t]{\CVrightmargin\CVunit}{\fsnorm\textcolor{footer}{\outfoot}}}%
\fancyfoot[L]{\parbox[t]{\LenToUnit{\dimexpr\textwidth-0.25\CVinmargin}}{\fsnorm\textcolor{footer}{\leftfoot\hfill\infoot}\hspace{\LenToUnit{\dimexpr\CVinmargin-1ex}}\null}}%
}
\fancypagestyle{page}{\fancyhf{}%
\fancyfoot[R]{\parbox[t]{\CVrightmargin\CVunit}{\fsnorm\textcolor{footer}{\outfoot}}}%
\fancyfoot[L]{\parbox[t]{\LenToUnit{\dimexpr\textwidth-0.25\CVinmargin}}{\fsnorm\textcolor{footer}{\leftfoot\hfill\infoot}\hspace{\LenToUnit{\dimexpr\CVinmargin-1ex}}\null}}%
\fancyhead[R]{\parbox[t]{\CVrightmargin\CVunit}{\fshead\textcolor{martit}{\CVCV}}}%
\fancyhead[L]{\parbox[t]{\LenToUnit{\dimexpr\textwidth-\CVinmargin}}{\CValign\fshead\textcolor{titlec}{\dbname}}}%
}
%% LEFT COLUMN PARAGRAPH
\newenvironment{para}[1]{\ifthenelse{\equal{##1}{}}{}{\parbox[t]{\LenToUnit{\dimexpr\textwidth-2\CVinmargin}}{\CValign\textcolor{titlec}{\fsnorm\textbf{##1}}}\\[\CVtitparlen]}
\begin{adjustwidth}{0pt}{2\CVinmargin}
\CValign\fsnorm}{\end{adjustwidth}
\vspace{\CVpardis}}

%% ENTRY COMMAND
\newcommand{\entry}[4]{%
\parbox[t]{\LenToUnit{\dimexpr\textwidth+\CVrightmargin\CVunit}}{%
% First column
\parbox[t]{\LenToUnit{\dimexpr\CVentry\CVunit-2\CVinmargin}}{%
\CValign\fsnorm\textcolor{titlec}{\textbf{##1}}}%
\hspace{\LenToUnit{\dimexpr\CVinmargin-1ex}}%
% Second column
\parbox[t]{\LenToUnit{\dimexpr\textwidth-\CVentry\CVunit-\CVinmargin+1ex}}{%
\CValign\fsnorm\ifthenelse{\equal{##2}{}}{##3}{\textbf{##2}\\ ##3}%
}%
\hspace{\LenToUnit{\dimexpr2.2\CVinmargin+1ex}}%
% Third column
\parbox[t]{\LenToUnit{\dimexpr\CVrightmargin\CVunit-2\CVinmargin}}{%
{\fsnorm\ifthenelse{\equal{##1}{}}{\textcolor{martex}{##4}}{\textcolor{martit}{\textbf{##4}}}}%
}
\vspace{\CVpardis}}}
\pagestyle{page}%
\thispagestyle{titlepage}%
\begin{textblock}{\CVinfobox}(\LenToUnit{\dimexpr\CVxinfobox\CVunit+\paperwidth-\CVrightmargin\CVunit+\CVinmargin},\CVyinfobox)
\ifthenelse{\equal{\dbpict}{}}{}{\null\hspace{\CVpictalign}\includegraphics[width=\LenToUnit{\dimexpr\CVrightmargin\CVunit+\CVpictwid\CVunit}]{\dbpict}\\[\CVinmargin]}

\null\hspace{\CVinfoalign}\parbox[t]{\CVinfoboxwidth\CVunit}{\textcolor{martex}{\fsnorm
\ifthenelse{\equal{\dbtele}{}}{}{\CVTeleicon\ \dbtele\\[\CVinfodis]}
\ifthenelse{\equal{\dbcell}{}}{}{\CVMobiicon\ \dbcell\\[\CVinfodis]}
\ifthenelse{\equal{\dbmail}{}}{}{\CVmailicon\ \dbmail\\[\CVinfodis]}
\ifthenelse{\equal{\dbmadd}{}}{}{\CVmaddicon\ \dbmadd\\[\CVinfodis]}
\ifthenelse{\equal{\dbinfo}{}}{}{\dbinfo}}}
\end{textblock}

\null
\vspace{\CVtitlesep\CVunit}
\parbox[t]{2\textwidth}{%
\parbox[t]{\LenToUnit{\dimexpr\textwidth-\CVinmargin}}{\CValign\textcolor{titlec}{\fshead\dbname}\\[\CVtsdis]
\textcolor{titlec}{\fssub\dbprof}}\hspace{\LenToUnit{\dimexpr2\CVinmargin-0.5ex}}\parbox[t]{\CVrightmargin\CVunit}{\textcolor{martit}{\fshead\CVProfil}}
}

\vspace{\CVpardis}}

%%%%%%%%%%%%%%%%%%%%
% Paragraph Layout %
%%%%%%%%%%%%%%%%%%%%
\RequirePackage{hyphenat}
\RequirePackage{ragged2e}
\RequirePackage{enumitem}
\setitemize[0]{leftmargin=*,itemindent=0pt}
\setlist{nosep}

\endinput
