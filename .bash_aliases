alias www='cd /var/www/'

alias pun='bin/phpunit -c backend/app'
alias dbrel='pac doctrine:schema:drop --force && pac doctrine:schema:create && pac doctrine:fixtures:load'

alias sfdev="php backend/app/console --env=dev"
alias sfprod="php backend/app/console --env=prod"