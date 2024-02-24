#search function
search () {
    contactName=$1

    #check if contactName is empty
    if [ -z $contactName ] # -z <string> return true if string is empty
    then
        echo -e "\nYou need to enter a name for the contact\n"
        echo -e "To help use --help\n"
        return
    fi

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