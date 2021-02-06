\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{test}[2020/11/28 Resume class file]
\nofiles
\LoadClass{article}

\pagenumbering{gobble}

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{7.5in}
\setlength{\textheight}{10in}

\usepackage[margin=0.5in]{geometry}
\usepackage{enumitem}
\usepackage{changepage}
\setitemize{itemsep=-0.25em}
\usepackage[T1]{fontenc}

\renewcommand\labelitemi{$\cdot$}

% Header
\newcommand{\name}[1]{
  \centerline{\textbf{\textsc{\Huge{#1}}}}
  \vspace{0.25em}
}

\newcommand\contact[3]{
    \centerline{
        \makebox[0pt][c]{
            #1 $\vert$ #2 $\vert$ #3
        }
    }
    \vspace{-0.75em}
}

%\newcommand\contact[4]{
%    \centerline{
%        \makebox[0pt][c]{
%            #1 $\vert$ #2 $\vert$ #3 $\vert$ #4
%        }
%    }
%    \vspace{-0.75em}
%}



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
  \vspace{0.5em}
}

% Ressubsection(*)
\newenvironment{ressubenvironment}{
  \begin{adjustwidth}{}{}
}{
  \end{adjustwidth}
}
\titleformat{\subsection}
  {\raggedright}
  {}{0em}
  {}

\makeatletter
\newcommand{\ressubsection}{\@ifstar\ressubsectionnocomma\ressubsectioncomma}
\makeatother
  
\newcommand{\ressubsectioncomma}[5]{
  \begin{ressubenvironment}
  \subsection[#1]{\textbf{#1}\hfill\textbf{#2}\\ \textit{#3} \hfill \textit{#4}}
  \vspace{-0.67em}
  #5
  \end{ressubenvironment}
  \vspace{-1.5em}
}
\newcommand{\ressubsectionnocomma}[4]{
  \begin{ressubenvironment}
  \subsection[#1]{\textbf{#1} #2 \hfill #3}
  \vspace{-0.67em}
  #4
  \end{ressubenvironment}
  \vspace{-1.5em}
}

% Indented text section (for awards and skills)
\newcommand{\indentedtextsection}[1]{
  \begin{ressubenvironment}
  #1
  \end{ressubenvironment}
  \vspace{-1.5em}
}







