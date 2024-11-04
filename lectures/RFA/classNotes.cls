\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{classNotes}[2014/01/01 Class file for class notes]
\LoadClass[12pt, openany]{book}

% --------------- MINIMUN PACKAGES ---------------
\RequirePackage{cancel} % To cancel terms in equations
\RequirePackage{fullpage}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{subfiles}


% --------------- LANGUAGE ---------------
\RequirePackage[english]{babel}


% --------------- TEXT ---------------
\RequirePackage{parskip}
\RequirePackage{xspace}
\RequirePackage{dirtytalk} %\say{} for quotes
\RequirePackage[none]{hyphenat}


% --------------- MATHEMATICS ---------------
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{accents}
\RequirePackage{bbm}
\RequirePackage{dsfont} %\mathds{} for double stroke letters
\RequirePackage{bm} % bold math
\RequirePackage{diagbox} %\diagbox{}
\RequirePackage{mathrsfs}
\RequirePackage{upgreek} %\up{letter} for upright greek letters
\RequirePackage{subfig}
\RequirePackage{booktabs}
\RequirePackage{authblk} %\author

% --------------- THEOREMS ---------------
\renewcommand\qedsymbol{$\blacksquare$}

\newtheoremstyle{note}{3pt}{3pt}{}{}{\bfseries}{:}{.5em}{}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{note}
\newtheorem*{remark}{Remark}
\newtheorem*{note}{Note}
\newtheorem*{exercise}{Exercise}
\newtheorem*{example}{E.g.}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{properties}{Properties}[section]

% --------------- BOXES ---------------
\newenvironment{ftheorem}[1][]
{\begin{tbox}\begin{theorem}[#1]\label{theo:\thetheorem}}
{\end{theorem}\end{tbox}}

\newenvironment{fremark}
{\begin{rbox}\begin{remark}}
{\end{remark}\end{rbox}}

\newenvironment{fnote}
{\begin{nbox}\begin{note}}
{\end{note}\end{nbox}}

\newenvironment{fdefinition}[1][]
{\begin{dbox}\begin{definition}[#1]}
{\end{definition}\end{dbox}}

\newenvironment{fexercise}
{\begin{ebox}\begin{exercise}}
{\end{exercise}\end{ebox}}

\newenvironment{fexample}[1][]
{\begin{examplebox}\begin{example}[#1]}
{\end{example}\end{examplebox}}

\newenvironment{flemma}[1][]
{\begin{tbox}\begin{lemma}[#1]}
{\end{lemma}\end{tbox}}

\newenvironment{fcorollary}
{\begin{tbox}\begin{corollary}}
{\end{corollary}\end{tbox}}

\newenvironment{fproposition}
{\begin{tbox}\begin{proposition}}
{\end{proposition}\end{tbox}}

\newenvironment{fproperties}
{\begin{tbox}\begin{properties}}
{\end{properties}\end{tbox}}

% --------------- CODE ---------------
\RequirePackage{listings} % For code snippets


% --------------- ALGORITHMS ---------------
\RequirePackage{algorithm}
\RequirePackage[noend]{algpseudocode}


% --------------- COLORS ---------------
\RequirePackage[dvipsnames]{xcolor}


% --------------- GRAPHICS ---------------
\RequirePackage{graphicx}
\RequirePackage[theorems]{tcolorbox}

% COLOR BOXES ---------------
\tcbuselibrary{breakable}

\newtcolorbox{tbox}
{boxrule=0.1pt, leftrule=2.5pt, colback=Bittersweet!7, colframe=RedOrange!75, sharp corners} % Teoremas

\newtcolorbox{rbox}
{boxrule=1pt, leftrule=2.5pt, colback=blue!7, colframe=blue!75, sharp corners} % Observaciones

\newtcolorbox{nbox}
{boxrule=0.1pt, leftrule=2.5pt, colback=cyan!7, colframe=cyan!75, sharp corners, breakable} % Notas

\newtcolorbox{ebox}
{boxrule=0.1pt, leftrule=2.5pt, colback=blue!7, colframe=blue!75, sharp corners, breakable}

\newtcolorbox{examplebox}
{boxrule=0.1pt, leftrule=2.5pt, colback=Fuchsia!7, colframe=Fuchsia!75, sharp corners, breakable} % Ejemplos

\newtcolorbox{dbox}
{boxrule=0.1pt, leftrule=2.5pt, colback=ForestGreen!7, colframe=ForestGreen!75, sharp corners} % Definiciones

\newcommand{\fmath}[1]
{\tcbhighmath[boxrule=0.8pt, colframe=black,colback=white,sharp corners]{#1}} % Hacer una box alrededor de ecuaciones
