FROM kauplan/review2.5

#COPY EMOJI/twemojis/ /tmp/twemojis
#RUN mkdir /usr/share/texlive/texmf-dist/tex/latex/twemojis
#RUN (cd /tmp/twemojis;pdflatex twemojis.ins)
#RUN cp /tmp/twemojis/twemojis.sty /usr/share/texlive/texmf-dist/tex/latex/twemojis

RUN mkdir /usr/share/texlive/texmf-dist/tex/latex/BXcoloremoji
COPY EMOJI/BXcoloremoji-0.16b/emoji_images /usr/share/texlive/texmf-dist/tex/latex/BXcoloremoji/emoji_images
COPY EMOJI/BXcoloremoji-0.16b/*.def /usr/share/texlive/texmf-dist/tex/latex/BXcoloremoji
COPY EMOJI/BXcoloremoji-0.16b/*.sty /usr/share/texlive/texmf-dist/tex/latex/BXcoloremoji

RUN mkdir /workdir
RUN chmod 775 /workdir

RUN mktexlsr
