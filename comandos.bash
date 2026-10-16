
# para crear el pdf
pandoc Informe.md -o informe.pdf --pdf-engine=xelatex -V geometry:margin=2cm
# regenerar diagrama de Gantt (requiere Chrome)
mmdc -i img/gantt_hoja_ruta.mmd -o img/gantt_hoja_ruta.png -w 1400 -H 700 -b white -p img/puppeteer.json

