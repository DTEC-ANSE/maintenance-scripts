#!/bin/sh

# AUTHOR:  Anthony GELIBERT
# VERSION: 1.1.0
# DATE:    02/07/2015

DOMAINS=( ace-aircareengineering.fr \
ace-aircareengineering.info \
ace-aircareengineering.eu \
ace-aircareengineering.net \
ace-aircareengineering.org \
ace-aircareengineering.com \
aircareengineering.org \
aircareengineering.info \
aircareengineering.be \
aircareengineering.eu \
aircareengineering.fr \
flora-vitalis.com \
flora-vitalis.eu \
flora-vitalis.net \
flora-vitalis.info \
flora-vitalis.be \
flora-vitalis.org \
flora-vitalis.fr \
floravitalis.net \
floravitalis.org \
floravitalis.eu \
floravitalis.info \
floravitalis.be \
floravitalis.fr \
nocobox.fr \
nocobox.com \
nocosium.com \
nocosium.eu \
nocosium.net \
nocopass.nocosium.eu )

wget --quiet "nocosium.fr" --output-document "ref.html"
for i in ${DOMAINS[@]}; do
    wget --quiet "$i" --output-document "cmp.html"
    [[ `diff -q ref.html cmp.html` ]] && echo "\x1b[31m$i [FAILED]\x1b[0m" || echo "\x1b[32m$i [OK]\x1b[0m"
    rm cmp.html
done
rm ref.html
