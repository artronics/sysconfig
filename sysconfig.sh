
#!/bin/bash
#
#
# This script configures the Linnux system which is purely fresh
# and need some general configurations and installing essential packages

# Author: Seyed Jalal Hosseini - April-2013

# User can control the process of script by using different available options.
# Using any of avalible options will overwrite this script config file.

# Options:
#	-a | --all			Doing all the configuration without prompting the user
#	-p | --packages		Just installing the essential packages
#	-c | --config		Just editing ~./bashrc to configure essential aliases
#	-d | --directories	Making a specific tree structure for user
#	-e | --eclips		Installing eclips CDT
#	-o | --oe			Installing openembedded essential packages
#	-i | --intractive	

# Also you can control the script either by editing it :) or bye commenting out
# or uncommenting some configuration

# CONFIGURATION 
# WARNING! : 

RUN_AS_ROOT=false
OPT_ALL=false
OPT_PACKAGES=false
OPT_CONFIG=false
OPT_DIRECTORIES=false
OPT_ECLIPS=false
OPT_OE=false
OPT_INTRACTIVE=false

	

# FUNCTIONS

# This functions makes directories structure for user $USER
make_dirs () {
	echo 'Making Directories for user $USER...'

	return
}

# This function installs essential packages
install_essential_packages () {
	echo 'Installing essential packages and programms...'

	return
}

# This function configures the .bashrc .First the lines which will be written to 
# .bashrc will be written to .bashrc.mod file by other functions
edit_bashrc () {
	echo 'Editing .bashrc...'
		
	return
}

# This function does essential vim configuration 
vim_config () {
	echo 'configuring vim configuration file...'

	return
}

# This function check user privileges for installing packages
check_user_privilege () {
	echo 'Checking user privilege...'
	if [ "$(id -u)" != "0" ]; then
		echo 'You dont have root privilege'
		RUN_AS_ROOT=false
	else
		RUN_AS_ROOT=true
	fi
	return
}

# This function install eclipse CDT IDE
install_eclipse () {
	echo 'Installing eclipse IDE...'

	return
}

# This function install openembedded essential packages
install_oe () {
	echo 'Installing openembedded essential packages...'

	return
}

# This function reads this script configuration if availible
read_conf () {
	echo 'Reading conf file...'

	return
}

# This function sets the aliases and write them to .bashrc.mod
alias_conf () {
	echo 'Writing aliases to .bashrc.mod...'

	return
}


######
# Setting the variables

check_user_privilege
echo $RUN_AS_ROOT
if [ $# -eq 0 ]; then
	echo 'Running script without any option'
	if [ $RUN_AS_ROOT ]; then
		echo 'You need to run the script in root.' 1>&2
		exit 1
	else
		OPT_ALL=true
	fi
fi

	

