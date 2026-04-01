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
  )
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::external::brews()
#
#>
######################################################################
p6df::modules::awscdk::external::brews() {

  p6df::core::homebrew::cmd::brew tap isen-ng/dotnet-sdk-versions
  p6df::core::homebrew::cli::brew::install --cask dotnet-sdk3-1-400
  p6df::core::homebrew::cli::brew::install dotnet

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::awscdk::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-awscdk/share/.nuget" "$HOME/.nuget"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-awscdk/share/.dotnet" "$HOME/.dotnet"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-awscdk/share/.templateengine" "$HOME/.templateengine"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::awscdk::env::init()
#
#  Environment:	 DOTNET_ROOT
#>
######################################################################
p6df::modules::awscdk::env::init() {

  local _module="$1"
  local _dir="$2"
  p6_env_export "DOTNET_ROOT" "/opt/homebrew/opt/dotnet/libexec"

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
#  Environment:	 P6_DFZ_SRC_FOCUSED_DIR P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::awscdk::clones() {

  p6_run_parallel "0" "4" "$(cat "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR"/p6df-awscdk/conf/cdks)" "p6_github_cli_clone" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}

######################################################################
#<
#
# Function: words awscdk = p6df::modules::awscdk::prompt::system()
#
#  Returns:
#	words - awscdk
#
#  Environment:	 CDK_DEFAULT_ACCOUNT CDK_DEFAULT_REGION CDK_DEPLOY_ACCOUNT CDK_DEPLOY_REGION
#>
######################################################################
p6df::modules::awscdk::prompt::system() {

  p6_return_words 'awscdk' '$CDK_DEPLOY_ACCOUNT' '$CDK_DEPLOY_REGION' '$CDK_DEFAULT_ACCOUNT' '$CDK_DEFAULT_REGION'
}
