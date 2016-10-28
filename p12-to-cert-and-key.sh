#!/bin/sh

IN=$1

if [ -z "$IN" ]; then
	IN=cert/01000003.p12
fi

#output private key !!!! without encryption (-nodes)
openssl pkcs12 -in $IN -nocerts -nodes -passin file:$IN.pwd -out $IN.key

#outpuut certificate
openssl pkcs12 -in $IN -nokeys -passin file:$IN.pwd -out $IN.crt

