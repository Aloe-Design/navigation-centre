get:
	go get github.com/gotk3/gotk3
	go get github.com/gotk3/gotk3/gdk
	go get github.com/gotk3/gotk3/glib
	go get github.com/dlasky/gotk3-layershell/layershell
	go get github.com/joshuarubin/go-sway
	go get github.com/allan-simon/go-singleinstance
	go get "github.com/sirupsen/logrus"

build:
	go build -v -o bin/aloe-navigation-centre .

install:
	-pkill -f aloe-navigation-centre
	sleep 1
	mkdir -p /usr/share/aloeos/navigation-centre
	cp -r ./images /usr/share/aloeos/navigation-centre
	cp config/* /usr/share/aloeos/navigation-centre
	cp bin/aloe-navigation-centre /usr/bin

uninstall:
	rm -r /usr/share/aloeos/navigation-centre
	rm /usr/bin/aloe-navigation-centre

run:
	go run .
