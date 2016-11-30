alias www='cd /var/www/'

alias pun='backend/vendor/bin/phpunit'
alias dbrel='sfdev doctrine:schema:drop --force && sfdev doctrine:schema:create && sfdev ha:doctrine:fixtures:load -n'

alias sftest="php backend/bin/console --env=test"
alias sfdev="php backend/bin/console --env=dev"
alias sfprod="php backend/bin/console --env=prod"
