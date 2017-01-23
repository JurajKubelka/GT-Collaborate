#!/bin/bash

function help {
    echo "USAGE: $0 <arguments>"
    echo "       -4  download Pharo 4.0 (image, changes, VM)"
    echo "       -6  download Pharo 6.0 (image, changes, VM)"
    echo "       -c  configure Pharo Sprint Server"
    echo "       -r  run Pharo Sprint Server"
    echo ""
}

function ensureWorkingDirectory {
    if mkdir -p server ; then
	cd server
    else
	echo "Cannot create working directory" >&2
	exit 4
    fi
}

function downloadPharoImageAndVM {
    # Downloads Pharo.image Pharo.changes, pharo, pharo-ui, and pharo-vm directory
    # $1 defines Pharo version (40, 50, 60)
    zeroScript="$(which curl wget | head -1)"
    PVERSION=${1:-60}

    case "$zeroScript" in
	*curl*)
	    curl get.pharo.org/$PVERSION+vm | bash
	    ;;
	*wget*)
	    wget -O- get.pharo.org/$PVERSION+vm | bash
	    ;;
	*)
	    echo default
	    ;;
    esac
}

# function configure {
#     # For some reason it does not work
#     ./pharo Pharo.image config \
# 	    http://smalltalkhub.com/mc/JurajKubelka/GTCollaborate/main/ \
# 	    ConfigurationOfPharoSprint --install=stable
# }


function configure {
    ./pharo Pharo.image ../buildPharoSprintServer.st
}

function run {
    ./pharo pharoSprintServer.image ../runPharoSprintServer.st
}


args=$(getopt 456crh $*)

if [ $? != 0 ] ; then
    help
    exit 2
fi

if [[ "$args" == " --"* ]] ; then
    help
    exit 1
fi

if [[ "$args" == *" -- "* ]] ; then
    help
    exit 3
fi

if [[ "$args" == *"-h"* ]] ; then
    help
    exit 0
fi

ensureWorkingDirectory

case "$args" in
    *"-4"*)
	PVERSION=40
	;;
    *"-5"*)
	PVERSION=50
	;;
    *"-6"*)
	PVERSION=60
	;;
    *)
	;;
esac

if [[ "$PVERSION" != "" ]] ; then
    echo
    echo "### Download Pharo Image and VM of version $PVERSION ###"
    echo
    downloadPharoImageAndVM "$PVERSION"
fi

if [[ "$args" == *"-c"* ]] ; then
    echo
    echo "### Configure Pharo Sprint Server Image ###"
    echo
    configure
fi

if [[ "$args" == *"-r"* ]] ; then
    echo
    echo "### Run Pharo Sprint Server ###"
    echo
    run
fi

