#!/bin/sh

# AUTHOR:  Anthony GELIBERT
# VERSION: 1.0.0
# DATE:    02/17/2015

DOMAINS=( nocosium.net \
    ace-aircareengineering.fr \
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
    nocopass.fr \
    nocopass.com \
    nocosium.com \
    datasheet.nocosium.com \
    datasheets.nocosium.com \
    projet-eec.nocosium.com \
    nocosium.fr \
    autun.nocosium.fr \
    datasheet.nocosium.fr \
    datasheets.nocosium.fr \
    dracy.nocosium.fr \
    lsbb.nocosium.fr \
    nocopass.nocosium.fr \
    nocostation-val.nocosium.fr \
    nocostation-vev.nocosium.fr \
    projet-eec.nocosium.fr \
    test-gtf.nocosium.fr \
    test-jace.nocosium.fr \
    utile.nocosium.fr \
    valence.nocosium.fr \
    vpn.nocosium.fr \
    wiki.nocosium.fr

    )
IPv4=( 87.106.155.169 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    nocostation-vev.nocosium.fr. \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    82.165.111.104 \
    valence.nocosium.fr. \
    193.251.188.237 \
    nocostation-vev.nocosium.fr. \
    valence.nocosium.fr. \
    valence.nocosium.fr. \
    82.165.111.104 \
    217.128.232.154 \
    nocostation-vev.nocosium.fr. \
    nocostation-val.nocosium.fr. )
IPv6=(   2001:8d8:1000:c214:1813:c3c0:efb3:3805 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     nocostation-vev.nocosium.fr. \
     NOT_AVAILABLE \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     NOT_AVAILABLE \
     NOT_AVAILABLE \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     NOT_AVAILABLE \
     valence.nocosium.fr. \
     NOT_AVAILABLE \
     nocostation-vev.nocosium.fr. \
     valence.nocosium.fr. \
     valence.nocosium.fr. \
     2001:8d8:1000:408a:5998:a89c:5fb1:5810 \
     NOT_AVAILABLE \
     nocostation-vev.nocosium.fr. \
     nocostation-val.nocosium.fr.
    )

for i in ${!DOMAINS[@]}; do
    domain4="$(dig +short A ${DOMAINS[$i]} | head -1)"
    domain6="$(dig +short AAAA ${DOMAINS[$i]} | head -1)"

    [[ ${IPv4[$i]} != ${domain4} ]] && echo "\x1b[31m${DOMAINS[$i]} IPv4 [FAILED]\x1b[0m" || echo "\x1b[32m${DOMAINS[$i]} IPv4 [OK]\x1b[0m"

    ([[ ${IPv6[$i]} == "NOT_AVAILABLE" || -z ${IPv6[$i]} ]] && echo "\x1b[33m${DOMAINS[$i]} IPv6 [SKIPPED]\x1b[0m") \
     || ([[ ${IPv6[$i]} != ${domain6} ]] && echo "\x1b[31m${DOMAINS[$i]} IPv6 [FAILED]\x1b[0m") \
     || echo "\x1b[32m${DOMAINS[$i]} IPv6 [OK]\x1b[0m"
done

#echo "IPv6=( "
#for i in ${!DOMAINS[@]}; do
#   domain6="$(dig +short AAAA ${DOMAINS[$i]} | head -1)"
#    [[ -z ${domain6} ]] && echo "\t NOT_AVAILABLE \\" || echo "\t ${domain6} \\"
#done
#echo "\t )"
