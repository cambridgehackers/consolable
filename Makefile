
EXE = consolable checkip

all: $(EXE)

consolable: consolable.c
	cc -Wall -o consolable consolable.c

checkip: checkip.c
	cc -Wall -o checkip checkip.c

install: $(EXE)
	cp $(EXE) /usr/local/bin
	cp etc/udev/rules.d/* /etc/udev/rules.d
	#/etc/init.d/udev restart
	service udev restart

clean:
	rm -f $(EXE)
