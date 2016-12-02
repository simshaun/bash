alias www='cd /var/www/'

# Enable xdebug for CLI
alias php='php -dzend_extension=xdebug.so'
# PHPUnit needs xdebug for coverage.
alias phpunit='php $(which phpunit)'

alias pun='backend/vendor/bin/phpunit'
alias dbrel='sfdev doctrine:schema:drop --force && sfdev doctrine:schema:create && sfdev ha:doctrine:fixtures:load -n'

alias sftest="php backend/bin/console --env=test"
alias sfdev="php backend/bin/console --env=dev"
alias sfprod="php backend/bin/console --env=prod"
