FROM kauplan/review2.5
COPY BXcoloremoji-1.0a /usr/share/texlive/texmf-dist/tex/latex/
RUN mktexlsr
