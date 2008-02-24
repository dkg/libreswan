#!/bin/sh

TEST_PURPOSE=regress
TEST_PROB_REPORT=0
TEST_TYPE=umlplutotest

TESTNAME=netkey-pluto-03-sourceip
EASTHOST=east
WESTHOST=west

WEST_ARPREPLY=1

# both ends get netkey
EAST_NETKEY=true
WEST_NETKEY=true

EAST_INPUT=../../klips/inputs/01-sunrise-sunset-ping.pcap
REF_WEST_OUTPUT=../../klips/west-icmp-01/spi1-cleartext.txt
WEST_ARPREPLY=true

#THREEEIGHT=true

REF_EAST_CONSOLE_OUTPUT=east-console.txt
REF26_EAST_CONSOLE_OUTPUT=east-console.txt
REF_WEST_CONSOLE_OUTPUT=west-console.txt
REF26_WEST_CONSOLE_OUTPUT=west-console.txt

REF_CONSOLE_FIXUPS="kern-list-fixups.sed nocr.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS east-prompt-splitline.pl"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS script-only.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS cutout.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS klips-debug-sanitize.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS ipsec-setup-sanitize.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS pluto-whack-sanitize.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS host-ping-sanitize.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS ipsec-look-esp-sanitize.pl"

EAST_INIT_SCRIPT=eastinit.sh
WEST_INIT_SCRIPT=westinit.sh

WEST_RUN_SCRIPT=westrun.sh

EAST_FINAL_SCRIPT=../basic-pluto-01/final.sh
WEST_FINAL_SCRIPT=../basic-pluto-01/final.sh

NETJIG_EXTRA=../basic-pluto-01/debugpublic.txt



