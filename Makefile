ANSIBLE_PLAYBOOK_CMD=	ansible-playbook
ANSIBLE_INVENTORY=	production/inventory.ini
ANSIBLE_PLAYBOOK=	site.yml

LIMIT=			*
TAGS=			all

.PHONY: defult production

default:

production:
	$(ANSIBLE_PLAYBOOK_CMD) \
	  --inventory $(ANSIBLE_INVENTORY) \
	  --limit="$(LIMIT)" \
	  --tags="$(TAGS)" \
	  $(ANSIBLE_PLAYBOOK) \
	;

