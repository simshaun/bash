#
# Windows Subsystem for Linux shortcuts
#

function proj () {
  cd /mnt/c/_projects
  cd "$1"
}

#
# cd Shortcuts
#

alias www='cd /var/www/'

#
# Xdebug
#

# Enable xdebug for CLI
alias php='php -dzend_extension=xdebug.so'

#
# PHPUnit
#

# PHPUnit needs xdebug for coverage.
alias phpunit='php $(which phpunit)'

#
# Symfony (global)
#

alias sftest="php backend/bin/console --env=test"
alias sfdev="php backend/bin/console --env=dev"
alias sfprod="php backend/bin/console --env=prod"
alias sfunit='backend/vendor/bin/simple-phpunit'

#
# Symfony (app-specific)
#

alias dbrel='sfdev doctrine:schema:drop --force && sfdev doctrine:schema:create && sfdev ha:doctrine:fixtures:load -n'
alias pun='backend/vendor/bin/phpunit'

function fastest () {
   find backend/src/*/Tests/ -name '*Test.php' | \
   (read files; SYMFONY_DEPRECATIONS_HELPER="disabled" backend/vendor/bin/fastest "backend/vendor/bin/phpunit $files;")
 }

export XDEBUG_CONFIG="idekey=PHPSTORM"
