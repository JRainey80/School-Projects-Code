#!/bin/bash

authenticated=false

tries=0

getuser () {
	read -p "User Name: " username
	read -p "Password: " password

}
getuser
while [ $authenticated = false ] && [ $tries -lt 2 ]
do
	if [ "$username" == "Jack Tripper" ] && [ "$password" == "TheReagalBeagle" ]
	then 
		echo "You have been authenticated!!"
		sleep 1
		echo "Your home directory is: "
		echo $HOME
		echo "also, this is an $TERM terminal"
		authenticated=true
		tries=3
	else
		echo "Incorrect User Name and/or Password!"
		((tries++))
		if [ $tries -lt 3 ]
		then 
			echo "Please try again"
		fi
		getuser
	fi
done
if [ $authenticated == false ]
then
	echo "Unable to authenticate and tries exceeded, you aren't privy to this information!!"
fi


