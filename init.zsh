
######################################################################
#<
#
# Function: p6df::modules::awscdk::deps()
#
#>
######################################################################
p6df::modules::awscdk::deps() {
  ModuleDeps=(
    p6m7g8/p6awscdk
    p6m7g8/p6df-aws
    aws/aws-cdk
  )
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::external::brew()
#
#>
######################################################################
p6df::modules::awscdk::external::brew() {

  brew cask install dotnet-sdk
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::langs()
#
#>
######################################################################
p6df::modules::awscdk::langs() {

  (cd $P6_DFZ_SRC_DIR/aws/aws-cdk; yarn build)
}

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

######################################################################
#<
#
# Function: p6df::modules::awscdk::aliases()
#
#>
######################################################################
p6df::modules::awscdk::aliases() {

  # runs an npm script via lerna for a the current module
  alias lr='lerna run --stream --scope $(node -p "require(\"./package.json\").name")'

  # runs "npm run build" (build + test) for the current module
  alias lb='lr build'
  alias lt='lr test'

  # runs "npm run watch" for the current module (recommended to run in a separate terminal session)
  alias lw='lr watch'
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::prompt::line()
#
#>
######################################################################
p6df::modules::awscdk::prompt::line() {

  p6_awscdk_prompt_info
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::docker::build()
#
#>
######################################################################
p6df::modules::awscdk::docker::build() {

  docker build -t aws-cdk .
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::docker::run(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6df::modules::awscdk::docker::run() {
  shift 0

  docker run -v $(pwd):/app -w /app aws-cdk "$@"
}