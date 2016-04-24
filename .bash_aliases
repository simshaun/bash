alias www='cd /var/www/'

alias pun='bin/phpunit -c backend/app'
alias dbrel='sfdev doctrine:schema:drop --force && sfdev doctrine:schema:create && sfdev ha:doctrine:fixtures:load -n'

alias sfdev="php backend/bin/console --env=dev"
alias sfprod="php backend/bin/console --env=prod"
