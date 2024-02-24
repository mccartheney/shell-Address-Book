help:  ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

add:  ## Add a new contact
	./main.sh --add

delete:  ## Delete a contact
	./main.sh --delete $(NAME)

edit:  ## Edit a contact
	./main.sh --edit $(NAME)

search:  ## Search a contact
	./main.sh --search $(NAME)

view: ## View all contacts
	./main.sh --view