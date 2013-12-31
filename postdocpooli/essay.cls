%% Aphyr's generic full-page essay class.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{essay}[2008/02/14 Full page academic essay class]

% Inherits from article class, using the current options
\LoadClassWithOptions{article}

% Set wider margins
\usepackage[margin=1in]{geometry}

% Include spacing
%\usepackage{setspace}
%\setstretch{1}

\setlength{\parindent}{0pt}
\setlength{\parskip}{2ex plus 0.5ex minus 0.2ex}

% Add a course variable
\newcommand{\course}[1]{
  \def \@course {#1}
}

% Clear global variable to scoping confusion
\global\let\@course\@empty
% We want this command to operate outside the document scope, hence it's not cleared here.
%\global\let\course\relax

%% Custom title
%\renewcommand{\maketitle}{
%  \begin{flushright}
%    \@author~ 
%    \today
%  \end{flushright}
%
%  \begin{center}
%    \textbf{\Large{\@title}}
%  \end{center}
%}
