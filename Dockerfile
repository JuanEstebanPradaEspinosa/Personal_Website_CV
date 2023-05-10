### Instructies voor het bouwen van een Image met PHP+Apache
### haal image die php and apache heeft
FROM php:8.1-apache
COPY html /var/www/html/
# Kopieer de inhoud van “html”(op de host)
# naar “/var/www/html”(in de image).
WORKDIR /var/www/html/
# Directory waar je terecht komt als je inlogt op een draaiende container
EXPOSE 80/tcp
# Binnen deze image/containerzal poort 80 (over TCP) gebruikt worden.
CMD service apache2 start && bash
# Met CMD geef je het commando op dat moet uitgevoerd worden
# bij het STARTEN (of RUNNEN) van de CONTAINER.
# Er kan slechts één CMD-lijn staan in een Dockerfile