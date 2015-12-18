# checkSsl
Bash/Python oneliner to determine how many days until the expiration of an HTTPS certificate, returning a single integer for the purposes of feeding to another program to analyze.  Remove the pipe to grep at the end if you wish for a more fully-formed date output.

Usage: ./checkSsl.sh www.domain.com:443

Of course, replace the 443 if serving on a non-standard port.
