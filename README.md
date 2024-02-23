# shell Address Book

This is a simple address book implemented in shell script. It allows you to store and manage contact information such as names, phone numbers.

## Features 

- Add new contacts with their names, phone numbers.
- View all stored contacts.
- Search for a specific contact by name.
- Delete an existing contact.
- Edit contact information.

## Requirements

Make sure you have the following requirements installed on your system:

- Shell (bash, sh, etc.)
- Standard Unix/Linux utilities (awk, sed, grep, etc.)

## How to Use

1. Clone this repository to your system:
```bash
   git clone https://github.com/mccartheney/shell-Address-Book/
```

2. Navigate to the project directory:
```bash
   cd shell-Address-Book
```

3. Run the main script:
```bash
   ./main.sh
```

4. Follow the on-screen instructions to add, view, search, edit, or delete contacts.

## Usage Examples

- Add a new contact:
```bash
   ./main.sh --add
```
  
- View all contacts:
```bash
  ./main.sh --view
```
  
- Search for a contact by name:
```bash
  ./main.sh --search $Name 
```
  
- Edit an existing contact:
```bash
  ./main.sh --edit $Name
```
  
- Delete an existing contact:
```bash
  ./main.sh --delete $Name
```

## Makefile usage

```bash
add                            Add a new contact
delete                         Delete a contact
edit                           Edit a contact
help                           Show help
search                         Search a contact
view                           View all contacts
```

- Add a new contact: 
```bash
make add
```

- Edit a contact:
```bash
make edit NAME="Name"
```

## Contributing

Contributions are welcome! Feel free to open an issue to report problems or suggest improvements. Pull requests are also accepted.

# Authors
[Mccartheney Mendes](https://github.com/mccartheney)

# License
This project is licensed under the [MIT License](./LINCENSE).
