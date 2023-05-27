\LoadClass[openany, twocolumn]{book}
\usepackage[utf8]{inputenc}
\usepackage[noend]{algcompatible}
\usepackage{algorithm}
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsthm}
\usepackage[english]{babel}
\usepackage{cancel}
\usepackage[justification=centering]{caption}
\usepackage{changepage}
\usepackage{circuitikz}
\usepackage{color}
\usepackage{empheq}
\usepackage[shortlabels]{enumitem}
\usepackage{fancyhdr}
\usepackage{float}
\usepackage{framed}
\usepackage{listings}
\usepackage[margin=0.5in]{geometry}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{mathrsfs}
\usepackage{mathtools}
\usepackage[metapost]{mfpic}
\usepackage{multicol}
\usepackage{multirow}
\usepackage{nameref}
\usepackage{setspace}
\usepackage{subcaption}
\usepackage[binary-units]{siunitx}
\usepackage[breakable]{tcolorbox}
\usepackage{tikz}
\usepackage{titlesec}
\usepackage[normalem]{ulem}
\usepackage{pgfplots}
\usepackage{proof}

\titleformat{\chapter}{\huge\bfseries}{Chapter \thechapter{}:\ }{0ex}{}
\titlespacing*{\chapter}{0 pt}{-1\baselineskip}{8 pt}
\titlespacing*{\subsection}{0 pt}{0 em}{0 em}
\titlespacing*{\subsubsection}{0 pt}{0 em}{0 em}
\setlist{nosep}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\hyperref[TOC]{\thepage}}
}
\pagestyle{plain}
\renewcommand\headrulewidth{0pt}

\pgfplotsset{compat=newest}

% TikZ library
\tikzstyle{branch}=[fill,shape=circle,minimum size=3pt,inner sep=0pt]
\usetikzlibrary{positioning,shapes.gates.logic.US}
\usetikzlibrary{circuits.logic.US}
\usetikzlibrary{arrows.meta}
\usetikzlibrary{circuits}
\usetikzlibrary{automata, chains}
\usetikzlibrary{calc}
\tikzset{>={Stealth[scale=1.25]}, node distance=3cm,every state/.style={thick, fill=gray!10}, initial text=$ $,in place/.style={auto=false, fill=white, inner sep=2pt,},} 
\tikzset{in place/.style={auto=false, fill=white, inner sep=2pt}}

\usetikzlibrary{fit}
\newcommand{\tikzmark}[2]{\tikz[overlay,remember picture] \node[anchor=base] (#1) {$#2$};}
\newcommand{\tikzhighlight}[4]{%
    \tikz[overlay,remember picture]{
    \node[rectangle,rounded corners,fill=#4!15,
    fill opacity=0.5,thick,inner sep=-2pt,fit=(#1)(#2)] (#3) {};}
}

% Page settings
\allowdisplaybreaks

\opengraphsfile{myfigs}
\captionsetup[subfigure]{justification=justified}


% Si Units settings
\sisetup{parse-numbers = false}
\sisetup{quotient-mode=fraction}
\DeclareSIUnit{\molar}{M}
\DeclareSIUnit{\atm}{atm}
\DeclareSIUnit{\calorie}{cal}
\DeclareSIUnit{\molal}{m}
\DeclareSIUnit{\b}{b}
\DeclareSIUnit{\B}{B}


\lstset{frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  frame=single,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=left,
  numberstyle=\tiny\color{purple},
  keywordstyle=\color{blue},
  commentstyle=\color{gray},
  stringstyle=\color{purple},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=4,
}
