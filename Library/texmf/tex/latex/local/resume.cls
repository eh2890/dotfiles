\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2020/11/28 Resume class file]
\nofiles
\LoadClass{article}

\pagenumbering{gobble}

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{7.5in}
\setlength{\textheight}{10in}

\usepackage[utf8]{inputenc}
\usepackage[margin=0.25in]{geometry}
\usepackage{enumitem}
\usepackage{changepage}
\setitemize{itemsep=-0.25em}
\usepackage{float}
\usepackage[T1]{fontenc}
\usepackage{hyperref}
\hypersetup{
	colorlinks=false,
	linkcolor=black,
	filecolor=black,      
	urlcolor=black,
}
\renewcommand\labelitemi{$\cdot$}


% Header
\newcommand{\name}[1]{
	\centerline{\textbf{\textsc{\Huge{#1}}}}
	\vspace{0.25em}
}

\newcommand\contact[3]{
    \vspace{0.25em}
    \centerline{
        \makebox[0pt][c]{
            #1 $\vert$ #2 $\vert$ #3
        }
    }
    \vspace{-0.5em}
}


% Ressection
\RequirePackage{titlesec}
\titleformat{\section}
	{\centering\titlerule\bfseries\scshape\large\vspace{0.25em}}
	{}{0em}
	{}

\newcommand{\ressection}[1]{
	\section{#1}
	\vspace{-1em}
	\titlerule
	\vspace{1em}
}

% Ressubsection
\newenvironment{ressubenvironment}{
	\begin{adjustwidth}{}{}
}{
	\end{adjustwidth}
}
\titleformat{\subsection}
	{\raggedright}
	{}{0em}
	{}
	
\newcommand{\ressubsection}[5]{
	\begin{ressubenvironment}
	\subsection[#1]{\textbf{#1}\hfill#2\\ \textit{#3} \hfill \textit{#4}}
	\vspace{-0.5em}
	#5
	\end{ressubenvironment}
	\vspace{-1.5em}
}


% Award
\newcommand{\award}[2]{
    \textbf{#1}\hfill#2\\
}


% Publication
\newcommand{\publication}[2]{
    #1\hfill#2\\
}


% Project
\makeatletter
\newcommand{\project}{\@ifstar\projectstar\projectnostar}
\makeatother

\newcommand{\projectnostar}[4]{
	\begin{ressubenvironment}
	\subsection[#1]{\textbf{#1} | #2 \hfill #3}
	\vspace{-0.67em}
	#4
	\end{ressubenvironment}
	\vspace{-1.5em}
}


% Project*
\newcommand{\projectstar}[3]{
	\begin{ressubenvironment}
	\subsection[#1]{\textbf{#1} \hfill #2}
	\vspace{-0.67em}
	#3
	\end{ressubenvironment}
	\vspace{-1.5em}
}


% Skills
\newcommand{\skills}[1]{
	\vspace{-0.25em}
	\begin{ressubenvironment}
	#1
	\end{ressubenvironment}
	\vspace{-1.5em}
}

\newcommand{\skill}[2]{
    \textbf{#1}: #2
}