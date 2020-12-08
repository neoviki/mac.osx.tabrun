## tabrun: Utility to run commands in a new terminal tab

This utility can be used to run bash commands in a new terminal.  The utility would be handy for development and test automation.

### How to use this utility?

##### Syntax:

	$tabrun <new tab name> <command to run>

##### Example 1:

	Run "ls" command in a new tab named mytab

	$tabrun mytab ls

##### Example 2:

	Run a script named "/home/test.sh" command in a new tab named mytab

	$tabrun mytab "/home/test.sh" 

### How to install this package?

	1. git clone <repo>
	2. cd src/
	3. chmod +x install.sh
	4. sudo ./install.sh

### Supported Platform

	This utility is supported only in Mac OSX.

