# Balogh Péter/V1ZBL1
FROM		registry.redhat.io/ubi7/ubi:7.9-861.1669887437
LABEL		description="Felhő technológiák házi feladat"
MAINTAINER	Balogh Péter
RUN			yum install -y httpd
EXPOSE		80
COPY		./src/ /var/www/html
CMD        ["httpd", "-D", "FOREGROUND"]
