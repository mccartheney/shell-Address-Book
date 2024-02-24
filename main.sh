#!/bin/bash

#content for --help
helpFile="./src/txtFiles/help.txt"

#content for welcome
welcomeFile="./src/txtFiles/welcome.txt"

#personDir
personDir="./src/persons"

#variable that contains the secound argument that holds one name
contactName=$2

#verify if persons exists
if ! [ -d ./src/persons ] #if dont exist create dir
then 
    mkdir ./src/persons
fi

source ./src/addContact.sh
source ./src/viewAll.sh
source ./src/search.sh
source ./src/edit.sh
source ./src/delete.sh

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
        addContact $contactName #create new contact

    #check if the argument is --view
    elif [ "$1" == "--view" ]
    then #if the argument is --view
        viewAll $personDir #call viewAll function

    #check if the argument is search
    elif [ "$1" == "--search" ]
    then #if the argument is search
        search $contactName #call search function

    #check if the argument is edit
    elif [ "$1" == "--edit" ]
    then #if the argument is edit
        edit $contactName #call edit function

    #check if the argument is delete
    elif [ "$1" == "--delete" ]
    then #if the argument is delete
        delete $contactName #call delete function
    
    #if the argument is not valid
    else
        echo -e "\nInvalid argument, try --help\n" #show message

    fi
    
fi
