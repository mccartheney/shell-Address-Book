#!/bin/bash

#content for --help
helpFile="./src/txtFiles/help.txt"

#content for welcome
welcomeFile="./src/txtFiles/welcome.txt"

#personDir
personDir="./src/persons"

#variable that contains the secound argument that holds one name
contactName=$2

#addContact function
addContact () {
    
    if [ -d ./src/persons/$contactName ] #search for dir, -d <dir> return true if dir exist if dont return false
    then # user exists
        echo -e "\nThis contact alredy exists, try another !!"
        echo -e "\nTo help use --help\n"
    else  #user dont exit
        #create  contact dir
        mkdir ./src/persons/$contactName
        #create contact file
        touch ./src/persons/$contactName/$contactName.txt
        
        #ask and get number of new contact from user
        echo "Number of $contactName"
        read contactNumber

        #write name and number on contactFile
        echo "Name : $contactName" >> ./src/persons/$contactName/$contactName.txt
        echo "Number : $contactNumber" >> ./src/persons/$contactName/$contactName.txt

        #Show contact
        echo -e "\nUser Created\n"
        cat ./src/persons/$contactName/$contactName.txt
    fi
}

#viewAll function
viewAll () {
    #check if have contacts
    if [ $(ls $personDir | wc -l) -eq 0 ] #ls get all contacts and wc -l return the number of ls 
    then #if dont have contacts
        echo -e "\nYou dont have contacts !!"
        echo -e "\nTo help use --help\n"
    else #if have contacts
        echo -e "\nYour Contacts\n"
        for dir in $(ls ./src/persons) #loop through persons
        do
            echo $dir #show person
        done
    fi
}

#search function
search () {
    #verify if contact exists
    if [ -d ./src/persons/$contactName ]
    then #if exists
        #show info about contact
        echo -e "\nInfo of $contactName\n"
        cat ./src/persons/$contactName/$contactName.txt
        echo
    else #if dont
        #ask user to create one
        echo -e "\nThis contact dont exists, try another or create that one !!"
        echo -e "\nTo help use --help\n"
    fi
}

#edit function
edit () {
    #verify if contact exists
    if [ -d ./src/persons/$contactName ]
    then #if exists
        #ask and get the new number for the contact
        echo "what is the new number of $contactName ??"
        read newNumber

        #change the content on the contact file
        echo "" > ./src/persons/$contactName/$contactName.txt
        echo "Name : $contactName" > ./src/persons/$contactName/$contactName.txt
        echo "Number : $newNumber" >> ./src/persons/$contactName/$contactName.txt

        #show the modifications
        echo -e "\n$contactName edited !!\n"
        cat ./src/persons/$contactName/$contactName.txt
    else
        #ask user to create one
        echo -e "\nThis contact dont exists, try another or create that one !!"
        echo -e "\nTo help use --help\n"
    fi
}

#delete function
delete () {
    #check if contact exists
    if [ -d ./src/persons/$contactName ]
    then #if exists
        rm -r ./src/persons/$contactName

    else #if dont exists
        #warn user the contact dont exist
        echo -e "\nThis contact dont exists!!"
        echo -e "\nTo help use --help\n"
    fi
}

#check if the program have arguments
if [ "$#" -eq 0 ]
then # if it dont have
    cat $welcomeFile # show the welcome file

else # if it have

    #check if argument is --help
    if [ "$1" == "--help" ]
    then # if the argument is --help
        cat $helpFile # show the help file

    #check if argument is --add
    elif [ "$1" == "--add" ]
    then #if the argument is --add
        addContact #create new contact

    #check if the argument is --view
    elif [ "$1" == "--view" ]
    then #if the argument is --view
        viewAll #call viewAll function

    #check if the argument is search
    elif [ "$1" == "--search" ]
    then #if the argument is search
        search #call search function

    #check if the argument is edit
    elif [ "$1" == "--edit" ]
    then #if the argument is edit
        edit #call edit function

    #check if the argument is delete
    elif [ "$1" == "--delete" ]
    then #if the argument is delete
        delete #call delete function

    fi

    
fi