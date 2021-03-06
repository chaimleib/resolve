SHELL=bash
PREFIX=/usr/local

all:
	[[ -x ./resolve.sh ]] || chmod +x ./resolve.sh

install: all uninstall
	[[ -d "$(PREFIX)/libexec/resolve" ]] || mkdir -p "$(PREFIX)/libexec/resolve"
	[[ -d "$(PREFIX)/bin" ]] || mkdir -p "$(PREFIX)/bin"
	cp -R ./resolve.sh ./README.md ./LICENSE "$(PREFIX)/libexec/resolve/"
	cd "$(PREFIX)/bin"
	ln -s ../libexec/resolve/resolve.sh "$(PREFIX)/bin/resolve"

uninstall:
	rm -rf "$(PREFIX)/lib/resolve"
	rm -rf "$(PREFIX)/libexec/resolve"
	rm -f "$(PREFIX)/bin/resolve"

