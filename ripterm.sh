#!/bin/bash
# script by Carl Gorringe (carl.gorringe.org)

function printUsage() {
  echo "RIPterm 1.54 in DOSbox."
  echo "Telnet to a BBS by providing a server and port number."
  echo " "
  echo "Usage: $0 server port"
  echo " "
}

if [ $# -ne 2 ]; then
  printUsage
  exit 1
fi

dos_path=$(which dosbox)
if [ $? -ne 0 ]; then
  printUsage
  echo "'dosbox' not found. Please install or place in path and try again!"
  exit 2
fi

echo "Running RIPterm using telnet connection..."
echo "telnet $1 $2"

echo "[serial]" > bbs.conf
echo "serial1=nullmodem server:$1 port:$2 telnet:1 usedtr:1 rxdelay:1000" >> bbs.conf

# echo "Waiting 3 seconds... (CTRL-C to abort!)"
# sleep 3
echo " "
echo "*** Press ALT-X to exit RIPterm ***"
echo " "

dosbox -conf dosbox.conf -conf bbs.conf

echo "Removing bbs.conf"
rm bbs.conf
echo "Done."
