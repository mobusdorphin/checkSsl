SSLOUTPUT=$(echo | openssl s_client -connect $1 2>/dev/null | openssl x509 -noout -dates | sed 's/\(.*\)notAfter=\(.*\)/\2/gm' | grep -v not); python -c "from datetime import datetime; certDate = datetime.strptime(\"$SSLOUTPUT\", \"%b %d %H:%M:%S %Y %Z\"); certExp = certDate - datetime.now(); print certExp" | grep -P -o '^[0-9]+'

