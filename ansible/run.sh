#!/bin/bash
#ansible-playbook -u root -i muc site.yml
#ansible-playbook -i muc -u voc --become --become-method=sudo  --tags mixer,mixer2,encodermode  mixers.yml

KEEPASS="${KEEPASS}" KEEPASS_PW="${KEEPASS_PW}" python2 `which ansible-playbook` -i muc -u voc --become --become-method=sudo  --tags voctomix encoders.yml --start-at-task='encoder : create recording script'