#! /bin/bash
: '
   Linux command line utility installer.
    			-->   [ Author ]  Viki (a) V Natarajan
				-->   [ Domain ]  https://viki.design
'

cd src
UTILITY_NAME="tabrun"

INSTALL_DIR="/usr/bin"

get_installation_directory(){
    echo "[ status   ] Identifying Host System"
    linux_system=`uname -srm | grep -i "linux"`
    mac_system=`uname -srm | grep -i "darwin"`

    if [ ! -z "$linux_system" ]; then
        echo "[ status ] Linux System "
        INSTALL_DIR="/usr/bin"

	#VIKI WARNING
	echo "ERROR: This utility is supported only for Mac OSX."
	exit 1
    fi

    if [ ! -z "$mac_system" ]; then
        echo "[ status ] Mac System"
        INSTALL_DIR="/opt/local/bin/"
    fi
}

install_util(){
    chmod +x ./$UTILITY_NAME
    #check sudo
    cp ./$UTILITY_NAME $INSTALL_DIR
}

check_installation_status(){
    if [ $1 -eq 0 ]; then
        echo "[ success ] $UTILITY_NAME installation is successful"
    else
        echo "[ failure ] $UTILITY_NAME installation failed, You should have sudo or root access to install this package"
    fi
}

get_installation_directory
UTILITY_NAME="tabrun"
install_util
check_installation_status $?

