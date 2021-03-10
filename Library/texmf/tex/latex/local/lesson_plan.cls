\LoadClass{article}
\usepackage[utf8]{inputenc}
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsthm}
\usepackage[english]{babel}
\usepackage{cancel}
\usepackage[justification=centering]{caption}
\usepackage{chemfig}
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
\usepackage{mathrsfs}
\usepackage[metapost]{mfpic}
\usepackage[version=4]{mhchem}
\usepackage{multicol}
\usepackage{multirow}
\usepackage{setspace}
\usepackage[binary-units]{siunitx}
\usepackage{tikz}


% Page settings
\allowdisplaybreaks
\setlength\parindent{24pt}
\opengraphsfile{myfigs}
\frenchspacing
\setlength{\headheight}{14pt}
\pagenumbering{arabic}
\pagestyle{fancy}
\setlength\parindent{0cm}


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


% Si Units settings
\sisetup{parse-numbers = false}
\sisetup{quotient-mode=fraction}
\DeclareSIUnit{\molar}{M}
\DeclareSIUnit{\atm}{atm}
\DeclareSIUnit{\calorie}{cal}
\DeclareSIUnit{\molal}{m}
\DeclareSIUnit{\torr}{torr}