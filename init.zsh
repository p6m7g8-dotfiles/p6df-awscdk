######################################################################
#<
#
# Function: p6df::modules::awscdk::version()
#
#>
######################################################################
p6df::modules::awscdk::version() { echo "0.0.1" }

######################################################################
#<
#
# Function: p6df::modules::awscdk::deps()
#
#>
######################################################################
p6df::modules::awscdk::deps() { ModuleDeps=() }

######################################################################
#<
#
# Function: p6df::modules::awscdk::external::brew()
#
#>
######################################################################
p6df::modules::awscdk::external::brew() { }

######################################################################
#<
#
# Function: p6df::modules::awscdk::home::symlink()
#
#>
######################################################################
p6df::modules::awscdk::home::symlink() { }

######################################################################
#<
#
# Function: p6df::modules::awscdk::init()
#
#>
######################################################################
p6df::modules::awscdk::init() {

  p6df::modules::awscdk::aliases
}

p6df::modules::awscdk::aliases() {

  # runs an npm script via lerna for a the current module
  alias lr='lerna run --stream --scope $(node -p "require(\"./package.json\").name")'

  # runs "npm run build" (build + test) for the current module
  alias lb='lr build'
  alias lt='lr test'

  # runs "npm run watch" for the current module (recommended to run in a separate terminal session)
  alias lw='lr watch'
}
