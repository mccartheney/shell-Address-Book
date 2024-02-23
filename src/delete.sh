#delete function
delete () {
    contactName=$1

    #check if contactName is empty
    if [ -z $contactName ] # -z <string> return true if string is empty
    then
        echo -e "\nYou need to enter a name for the contact\n"
        echo -e "To help use --help\n"
        return
    fi

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