
# para crear el pdf
pandoc Informe.md -o informe.pdf --pdf-engine=xelatex -V geometry:margin=2cm
# para crear el html
pandoc Informe.md -s -o Informe.html --metadata pagetitle="Taller Planeación Estratégica" --metadata lang=es


