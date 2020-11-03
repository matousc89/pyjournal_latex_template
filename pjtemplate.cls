\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pjtemplate}[2020/10/10 PyJournal class]

\LoadClass[11pt]{article}

\RequirePackage{xcolor}
\RequirePackage{natbib}
\RequirePackage{graphicx}
\RequirePackage[utf8]{inputenc}
\RequirePackage{listings}
\RequirePackage[ruled,vlined]{algorithm2e}
\RequirePackage{amsmath,amssymb}


\pagenumbering{gobble}

\def\affiliation#1{\def\@affiliation{#1}}
\def\funding#1{\def\@funding{#1}}
\def\keywords#1{\def\@keywords{#1}}

% FONT
\RequirePackage{fourier}
\RequirePackage[sfdefault]{plex-sans}


% HEADER (from second page)
% \RequirePackage{fancyhdr}
% \pagestyle{fancy}
% \rhead{}
% \lhead{}
% \rfoot{}


\usepackage{sectsty}
\sectionfont{\normalfont\fontsize{16}{19}}
\subsectionfont{\normalfont\fontsize{14}{17}}
\subsubsectionfont{\normalfont\fontsize{14}{17}\selectfont}


% SPACING
\RequirePackage{setspace}
\onehalfspacing

% MARGINS
\RequirePackage{geometry}
 \geometry{
 a4paper,
 left=40mm,
 right=40mm,
 top=50mm,
 bottom=30mm
 }


% COVER PAGE
\renewenvironment{abstract}{
%  \large\noindent\unskip\textbf{Abstract:}
  \setlength{\parindent}{0cm}\large
}

\makeatletter
\def\@maketitle{%
  \newpage
  \null
%   \vskip -6em%
%   \hskip -2em%
%   \includegraphics[scale=0.2]{PyJournal_logo.pdf}
  \vskip 4em%
  \noindent\rule{\textwidth}{1pt}
  \vskip 1em
  \let \footnote \thanks
    {\setlength{\parindent}{0cm}\LARGE \@title \par}%
    \vskip 2.5em%
    {\setlength{\parindent}{0cm}\large
      \lineskip 1em%
      \@author
    \vskip 1em}
  \setlength{\parindent}{0cm}\footnotesize\@affiliation
  \par
  \vskip 1em
  \setlength{\parindent}{0cm}\footnotesize\@funding
  \par
  \vskip 1em%
    \setlength{\parindent}{0cm}\footnotesize
    Keywords: \@keywords
  \par
  \vskip 1em%
  \noindent\rule{\textwidth}{1pt}
  \vskip 1.5em}
\makeatother

