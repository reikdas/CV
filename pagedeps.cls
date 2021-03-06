%
% Class with dependencies for my CV
%
\ProvidesClass{pagedeps}[2016/09/04 Dependency Class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

%
%   Package Imports
%
\usepackage[hmargin=1cm, vmargin=0.985cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[absolute]{textpos} %TPHorizontal....
\usepackage{anyfontsize} % to control fonts
\usepackage{setspace} % to control the spacing between lines
\usepackage{pbox}

%
% cmd to create personal entry
%
\newlength{\spacebox} % define a new length
\settowidth{\spacebox}{8888888888}          % Box to align text
\newcommand{\PersonalEntry}[2]{
    \noindent\hangindent=10cm\hangafter=0 % Indentation
    \makebox[5em][l]{\textit{#1}}
    \hspace{1em}
    \makebox[\width][l]{#2} \par
}

%
% cmd to create an education entry
%
\newcommand{\EducationEntry}[4]{
    \noindent\makebox[\width][l]{#1} \hfill
    \makebox[\width][l]{#2} \\
    \indent
    \makebox[\width][l]{\textit{#3}} \vspace{5pt}\\
    \noindent
    \parbox[t][\height][c]{\textwidth}{\small{#4}}
	\vspace{-14pt}
}

\newcommand{\ExperienceEntry}[5]{
    \noindent\makebox[\width][l]{#1} \hfill
    \makebox[\width][l]{#2} \\
    \noindent\makebox[\width][l]{#3} \hfill \\
    \indent
    \makebox[\width][l]{\textit{#4}} \vspace{5pt}\\
    \noindent
    \parbox[t][\height][c]{\textwidth}{\small{#5}}
	\vspace{-1pt}
}

\newcommand{\ProjectEntry}[5]{
    \noindent\makebox[\width][l]{#1} \hfill
    \makebox[\width][l]{#2} \\
    \indent
    \makebox[\width][l]{\textit{#4}} \vspace{5pt}\\
    \noindent
    \parbox[t][\height][c]{\textwidth}{\small{#5}}
	\vspace{-6pt}
}

\newcommand{\ProgrammingEntry}[2]{
    \noindent\makebox[\width][l]{#1} \\
    \indent
    \makebox[\width][l]{\textit{#2}}
}

\newcommand{\PresentationEntry}[2]{
    \indent
    \makebox[\width][l]{#1} \\
    \indent\indent\makebox[\width][l]{\textit{#2}}
}

\newcommand{\PublicationEntry}[1]{
    \noindent\makebox[\width][l]{#1}
}

\newcommand{\AthleticEntry}[3]{
    \noindent\makebox[\width][l]{#1} \hfill
    \makebox[\width][l]{#2} \\
    \parbox[t][\height][c]{\textwidth}{\textit{#3}}
}

\newcommand{\Section}[1]{
 %   \vspace{5pt}
 %   \noindent\hangindent=0.5cm\hangafter=0
 %   \textbf{\fontsize{20}{20}\selectfont #1} \par
 %   \vspace{-5pt}
 %   \noindent\rule{\textwidth}{0.4pt} \par
 %   \vspace{5pt}
    \Line \par
    \vspace{1pt}
    \textbf{\fontsize{13}{13}\selectfont #1} \par
    \vspace{-7pt}
    \Line \par
    \vspace{3pt}
}

\newcommand{\Line}{
\noindent\rule{\textwidth}{0.4pt}}

%
% cmd to create a keyword
%
\newcommand{\CreateKeyword}[1]{\textbf{\textit{#1}}}

%
%   lastupdated command
%
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm}
\newcommand{\lastupdated}{
    \begin{textblock}{100}(130,0)
    \fontsize{6pt}{8pt}
    Last updated on \today
    \end{textblock}
}

%
% env for tight lists
%
\newenvironment{tightitemize}
{
    \vspace{-\topsep}
    \begin{itemize}
        \itemsep2pt \parskip0pt \parsep0pt
}
{
    \end{itemize}
    \vspace{-\topsep}
}
