\LoadClass{article}
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
\usepackage{chemfig}
\usepackage{circuitikz}
\usepackage{color}
\usepackage[autostyle]{csquotes}
\usepackage{empheq}
\usepackage[shortlabels]{enumitem}
\usepackage{fancyhdr}
\usepackage{float}
\usepackage{framed}
\usepackage{listings}
\usepackage[margin=1in]{geometry}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{karnaugh-map}
\usepackage{mathrsfs}
\usepackage{mathtools}
\usepackage[metapost]{mfpic}
\usepackage[version=4]{mhchem}
\usepackage{modiagram}
\usepackage{multicol}
\usepackage{multirow}
\usepackage{nameref}
\usepackage{setspace}
\usepackage{subcaption}
\usepackage[binary-units]{siunitx}
\usepackage{tcolorbox}
\usepackage{tikz}
\usepackage[normalem]{ulem}
\usepackage{pgfplots}
\usepackage{proof}

\pgfplotsset{compat=newest}

% TikZ library
\tikzstyle{branch}=[fill,shape=circle,minimum size=3pt,inner sep=0pt]
\usetikzlibrary{positioning,shapes.gates.logic.US}
\usetikzlibrary{circuits.logic.US}
\usetikzlibrary{arrows.meta}
\usetikzlibrary{circuits}
\usetikzlibrary{automata, chains}
\usetikzlibrary{calc}
\tikzset{>=stealth, node distance=3cm,every state/.style={thick, fill=gray!10}, initial text=$ $,in place/.style={auto=false, fill=white, inner sep=2pt,},} 
\tikzset{Dff/.style={flipflop, flipflop def = {t2=D, t6=Q, t4={\ctikztextnot{Q}}, cu = 1}}}
\tikzset{mux 4by2/.style={muxdemux, muxdemux def={Lh=4, NL=4, Rh=3, NB=1, w=2.5, square pins=1}}}
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
\frenchspacing
\setlength{\headheight}{14pt}
\pagenumbering{arabic}
\pagestyle{fancy}
\captionsetup[subfigure]{justification=justified}


% New commands
\newcommand{\diff}{\mathop{}\!d}
\newcommand{\parentheses}[1]{{\left(#1\right)}}
\newcommand{\braces}[1]{{\left\{#1\right\}}}
\newcommand{\brackets}[1]{\left[#1\right]}
\newcommand{\fdiff}[2]{\frac{\diff #1}{\diff #2}}
\newcommand{\fpartial}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\overbar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}
\newcommand{\contradiction}{\Rightarrow\!\Leftarrow}
\newcommand{\suchthat}{\text{ s.t. }}
\newcommand{\inv}{^{-1}}
\newcommand*\widefbox[1]{\fbox{\hspace{2em}#1\hspace{2em}}}
\newcommand{\independent}{\mathrel{\text{\scalebox{1.07}{$\perp\mkern-10mu\perp$}}}}
\newcommand{\dgr}{^\circ}
\DeclareMathOperator\E{E}
\DeclareMathOperator\Var{Var}
\DeclareMathOperator\Cov{Cov}
\DeclareMathOperator\erf{erf}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\asin}{asin}
\DeclareMathOperator{\acos}{acos}
\DeclareMathOperator{\atantwo}{atan2}


% Renew commands
\renewcommand{\mod}[1]{\ \mathrm{mod}\ #1}
\renewcommand{\gcd}[2]{\mathrm{gcd}(#1, #2)}


% Si Units settings
\sisetup{parse-numbers = false}
\sisetup{quotient-mode=fraction}
\DeclareSIUnit{\molar}{M}
\DeclareSIUnit{\atm}{atm}
\DeclareSIUnit{\calorie}{cal}
\DeclareSIUnit{\molal}{m}


% Listings settings
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}


\lstset{frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=left,
  numberstyle=\tiny\color{purple},
  keywordstyle=\color{blue},
  commentstyle=\color{green},
  stringstyle=\color{purple},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=4,
}


% Theorem settings
\theoremstyle{definition}
\renewcommand\qedsymbol{$\blacksquare$}

\newtheorem{theorem}{Theorem}[section]
\newtheorem*{theorem*}{Theorem}

\newtheorem{corollary}{Corollary}[theorem]
\newtheorem*{corollary*}{Corollary}

\newtheorem{lemma}{Lemma}[theorem]
\newtheorem*{lemma*}{Lemma}

\newtheorem{definition}{Definition}[section]
\newtheorem*{definition*}{Definition}

\newtheorem{claim}{Claim}[section]
\newtheorem*{claim*}{Claim}

\theoremstyle{remark}
\newtheorem*{remark}{Remark}
