#addContact function
addContact () {    
    contactName=$1

    #check if contactName is empty
    if [ -z $contactName ] # -z <string> return true if string is empty
    then
        echo -e "\nYou need to enter a name for the contact\n"
        echo -e "To help use --help\n"
        return
    fi

    if [ -d ./src/persons/$contactName ] #search for dir, -d <dir> return true if dir exist if dont return false
    then # user exists
        echo -e "\nThis contact already exists, try another!"
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