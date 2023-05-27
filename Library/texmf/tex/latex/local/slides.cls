\LoadClass[t]{beamer}
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
\usepackage{circuitikz}
\usepackage{color}
\usepackage[autostyle]{csquotes}
\usepackage{empheq}
\usepackage{fancyhdr}
\usepackage{float}
\usepackage{framed}
\usepackage{listings}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{karnaugh-map}
\usepackage{mathrsfs}
\usepackage{mathtools}
\usepackage[metapost]{mfpic}
\usepackage{modiagram}
\usepackage{multicol}
\usepackage{multirow}
\usepackage{nameref}
\usepackage{subcaption}
\usepackage{tcolorbox}
\usepackage{tikz}
\usepackage{pgfplots}
\pgfplotsset{compat=newest}

% Beamer theme
\usetheme{Madrid}
\usecolortheme{default}
\AtBeginSection[]{
  \begin{frame}
  \vfill
  \centering
  \begin{beamercolorbox}[sep=8pt,center,shadow=true,rounded=true]{title}
    \usebeamerfont{title}\insertsectionhead\par%
  \end{beamercolorbox}
  \vfill
  \end{frame}
}


% TikZ library
\tikzstyle{branch}=[fill,shape=circle,minimum size=3pt,inner sep=0pt]
\usetikzlibrary{positioning,shapes.gates.logic.US}
\usetikzlibrary{circuits.logic.US}
\usetikzlibrary{arrows.meta}
\usetikzlibrary{circuits}
\usetikzlibrary{automata, chains}
\usetikzlibrary{calc}
\tikzset{>=stealth, node distance=3cm,every state/.style={thick, fill=gray!10}, initial text=$ $,in place/.style={auto=false, fill=white, inner sep=2pt,},} 
\tikzset{in place/.style={auto=false, fill=white, inner sep=2pt}}
