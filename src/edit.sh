#edit function
edit() {
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