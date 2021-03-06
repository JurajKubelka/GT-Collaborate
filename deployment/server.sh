#!/bin/bash

export ERR_NOARGS=1
export ERR_DIR=2
export ERR_MISSING_FILE=3
export ERR_NOSERVER=4

function help {
    echo "USAGE: $0 <arguments> [server name]"
    echo "       -4  download Pharo 4.0 (image, changes, VM)"
    echo "       -5  download Pharo 5.0 (image, changes, VM)"
    echo "       -6  download Pharo 6.0 (image, changes, VM)"
    echo "       -c  configure the [server name] server"
    echo "       -r  run the [server name] server"
    echo " server name can be:"
    echo "       sprint    Trantor Pharo Sprint Server"
    echo "       webhooks  FogBugz Webhooks to IoT Delegate Server"
    echo ""
}

function ensureWorkingDirectory {
    if mkdir -p server ; then
	cd server
    else
	echo "Cannot create working directory" >&2
	exit $ERR_DIR
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


function runPharoScript {
    # $1 Pharo image
    # $2 Pharo script
    PHARO="./pharo"
    if [ ! -r "$PHARO" ] ; then
	echo "Missing Pharo VM called $PHARO in $PWD directory." >&2
	exit $ERR_MISSING_FILE
    fi
    if [ ! -r "$1" ] ; then
	echo "Missing Pharo image called $1 in $PWD directory." >&2
	exit $ERR_MISSING_FILE
    fi
    if [ ! -r "$2" ] ; then
	echo "Missing script file '$2' in $PWD directory." >&2
	exit $ERR_MISSING_FILE
    fi
    $PHARO "$1" "$2"
}

function configure {
    # $1 <server-name>
    runPharoScript Pharo.image "../configure-${1}-server.st"
}

function run {
    # $1 <server-name>
    runPharoScript "${1}Server.image" "../run-${1}-server.st"
}

# Parse allowed parameters
args=$(getopt 456crhn: $*)

if [ $? != 0 ] ; then
    help
    exit $ERR_NOARGS
fi

set -- $args

for param
do
    case "$param"
    in
	-4)
	    ARG_VERSION=40
	    ARG_OK=true
	    shift
	    ;;
	-5)
	    ARG_VERSION=50
	    ARG_OK=true
	    shift
	    ;;
	-6)
	    ARG_VERSION=60
	    ARG_OK=true
	    shift
	    ;;
	-r)
	    ARG_RUN=true
	    ARG_OK=true
	    shift
	    ;;
	-c)
	    ARG_CONFIGURE=true
	    ARG_OK=true
	    shift
	    ;;
	-h)
	    ARG_HELP=true
	    shift
	    ;;
	--)
	    shift
	    break
	    ;;
	-n)
	    ARG_SERVER="$2"
	    shift
	    shift
	    ;;
    esac
done

if [ "$ARG_HELP" ] ; then
    help
    exit 0
fi

if [ ! "$ARG_OK" ] ; then
    echo "You should decide what to do." >&2
    help
    exit $ERR_NOARGS
fi

if [ \( -n "$ARG_CONFIGURE" -o -n "$ARG_RUN" \) -a -z "$ARG_SERVER" ] ; then
    echo "You have to decide what server to configure or run. Use parameter -n." >&2
    help
    exit $ERR_NOSERVER
fi

ensureWorkingDirectory

if [ "$ARG_VERSION" ] ; then
    echo
    echo "### Download Pharo Image and VM of version $PVERSION ###"
    echo
    downloadPharoImageAndVM "$ARG_VERSION"
fi

if [ "$ARG_CONFIGURE" ] ; then
    echo
    echo "### Configure "$ARG_SERVER" Server Image ###"
    echo
    configure "$ARG_SERVER"
fi

if [ "$ARG_RUN" ] ; then
    echo
    echo "### Run "$ARG_SERVER" Server ###"
    echo
    run "$ARG_SERVER"
fi
