#viewAll function
viewAll () {
    personDir=$1

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