cat "$1" | grep -o -a "http://[a-zA-Z0-9\-\.]*/" | sort | uniq
