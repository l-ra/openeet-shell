#!/bin/bash


URL="https://pg.eet.cz/eet/services/EETServiceSOAP/v3"   # Playground
#URL="https://prod.eet.cz/eet/services/EETServiceSOAP/v3" # Produkcni

curl -XPOST \
   -H "Content-Type: text/xml;charset=UTF-8" \
   -H "SOAPAction: http://fs.mfcr.cz/eet/OdeslaniTrzby" \
   --data-binary @$1\
   "$URL"
