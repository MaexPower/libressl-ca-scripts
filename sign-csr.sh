#!/bin/bash
CCACSR=req/woelkchen.cln-berlin.de.pem
CCACA=CLNCA-v1.pem
CCAOUT=cert/woelkchen-2017.pem
CCAKEY=private/ca-private.key
openssl x509 -req -days 365 -in $CCACSR -CA $CCACA -CAkey $CCAKEY -CAcreateserial -out $CCAOUT -sha256
