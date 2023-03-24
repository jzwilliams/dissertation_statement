%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                        dissertation_statement                          %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A statement-size dissertation (8.5 x 5.5 in) based on the memoir class.
% The 615-page manual provides much, much more detail for customization!
%   Find it here: https://ctan.org/pkg/memoir?lang=en
% Its author, Peter Wilson, also has a helpful book about book design, which
%   is freely available at https://texdoc.org/serve/memdesign/0.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissertation_statement}
              [2023/03/24 Statement-size (8.5 x 5.5) dissertation]

\LoadClass[statementpaper,      % 8.5 x 5.5 in
           10pt,                % base font size
           twoside,             % print on both sides ofc
           onecolumn,           % only one column (small paper)
           openright,           % chapters start on recto
           draft] %final]       % faster compilation
           {memoir}             % A lovely basis class!

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                        Packages and macros                             %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% You probably won't need this in the final version
\RequirePackage{lipsum}

% References
\RequirePackage[backend=biber,              % This is a powerful backend
                style=phys,                 % Use your field's, of course
                biblabel=brackets,          % How the sources appear in the refs
                doi=true]                   % doi: Digital Object Identifier
                {biblatex}
\addbibresource{_dissertation.bib}

% Figures and tables
\RequirePackage{booktabs}
\RequirePackage{graphicx}

\graphicspath{{./figures}}

% Linking
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                            Page and type layout                        %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For reference: units are  point (pt), pica (pc)
%   1 pt = 0.013837 in, so that 6 pc = 72 pt ~= 1 in
%   1 pc = 12 pt
%   1 em = nominal height of current font, used as width measure; 1 em = 2 ex

\settypeblocksize{36\onelineskip}{25pc}{*}
%       # lines vertical; # picas horizontal; [ratio]
% 24--26 pc are good for 10pt Palatino, which has an alphabet width of 133 pt.
% Computer Modern should probably skew towards a 25 pc measure

% \set[xy]margins{h}{w}{r}: h = height, w = width, r = ratio
%       lr: outer/inner (spine). Here: outer margins = 1.5 x spine margin
%       ul: upper/lower (here, equal)
\setlrmargins{*}{*}{1.5}
\setulmargins{*}{*}{1}

\checkandfixthelayout

% Palatino font (well, an open clone of it anyway)
\RequirePackage{newpxtext,newpxmath}

% memoir provides various other chapter styles
\chapterstyle{dash}

% Don't print extraneous header/footer material in the front-matter
\aliaspagestyle{fronts}{empty}

\nouppercaseheads           % I don't like all-caps chapter name in the header
\pagestyle{headings} 

\epigraphfontsize{\small\itshape}
\setlength\epigraphwidth{22pc}
\setlength\epigraphrule{0pt}

\renewcommand{\chapterprecistoc}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                              Half title page                           %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Adapted from the titleDS template in the memoir style guide.
\newcommand*{\titlehalf}{
\begingroup
\thispagestyle{empty}
\vspace{4\baselineskip}
\centering
{\LARGE Dissertation Title (Short)}

\cleardoublepage

\endgroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                Title page, copyright page, and colophon                %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\titlemain}{
\begingroup%
\thispagestyle{empty}
\centering
{\LARGE Dissertation Title: \\[0.25\baselineskip]
A Fuller Exposition What might mot Fit on the Half-Title Page
}\par
\vspace{0.5\baselineskip}
{by}\\[0.5\baselineskip]
{You!\\[\baselineskip]}\par
Date: \\[1.0\baselineskip]
{Approved:\\}\par
\vspace{1.5\baselineskip}
\rule{15em}{0.4pt}\\
P. Restigious, Dissertation Advisor \\[1.5\baselineskip]
\rule{15em}{0.4pt}\\
L. Eadingscholar \\[1.5\baselineskip]
\rule{15em}{0.4pt}\\
C. O. Mmitteemember \\[1.5\baselineskip]
\rule{15em}{0.4pt}\\
E. T. Al\par
\vspace{2.5\baselineskip}
{\small
[Dissertation] submitted in partial fulfillment of the requirements for the
degree of [Doctor of Philosophy] in the [Department of Eldritch Studies] at [Miskatonic University]\\[\baselineskip]
2024}\par
\vfill
\clearpage

% Colophon and copyright on the verso
\vspace*{10\baselineskip}
Typeset in \LaTeX with the \texttt{memoir} class. The font is Michael Sharpe's
New PX (with mathematics typeset in New PX Math), which is based on Young Ryu's
PX, itself a clone of Palatino by Hermann Zapf. The font size is 10 pt, and it
is printed on a 25 pc measure.

\null\vfill
\begin{flushright}
%{\small 
\copyright \ The Author 2023. All rights reserved. %}
\end{flushright}
\clearpage
\endgroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%