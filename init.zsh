# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::awscdk::deps()
#
#>
######################################################################
p6df::modules::awscdk::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6awscdk
    p6m7g8-dotfiles/p6df-aws
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

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::home::symlink()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::awscdk::home::symlink() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-awscdk/share/.nuget" ".nuget"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-awscdk/share/.dotnet" ".dotnet"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-awscdk/share/.templateengine" ".templateengine"

  p6_return_void
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

  p6_return_void
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

  p6_run_dir "$P6_DFZ_SRC_DIR/aws/aws-cdk" "yarn build"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::clones()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::awscdk::clones() {

  p6_run_parallel "0" "4" "$(cat $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-awscdk/conf/cdks)" "p6_github_util_clone" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
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

  p6_return_void
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

  p6_return_void
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
