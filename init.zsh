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

  brew tap isen-ng/dotnet-sdk-versions
  brew install --cask dotnet-sdk3-1-400
  brew install dotnet
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::langs()
#
#>
######################################################################
p6df::modules::awscdk::langs() {

  npm install -g aws-cdk
  nodenv rehash

  npm list --depth 0 -g
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::langs::awscdk()
#
#>
######################################################################
p6df::modules::awscdk::langs::awscdk() {

  (
    cd $P6_DFZ_SRC_DIR/aws/aws-cdk
    yarn build
  )
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
