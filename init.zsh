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

  p6_js_npm_global_install "aws-cdk"
  p6_js_npm_global_install "cdk-dia"
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::langs::awscdk()
#
#  Environment:	 P6_DFZ_SRC_DIR
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
# Function: p6df::modules::awscdk::clones()
#
#  Depends:	 p6_run
#  Environment:	 P6_DFZ_SRC_P6M7G8_DIR
#>
######################################################################
p6df::modules::awscdk::clones() {

  p6_run_parallel "0" "4" "$(cat $P6_DFZ_SRC_P6M7G8_DIR/p6df-awscdk/conf/cdks)" "p6_github_util_repo_clone_or_pull_no_ou" "$P6_DFZ_SRC_FOCUSED_DIR"
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
