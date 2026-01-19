# shellcheck shell=bash
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

  docker run -v "$(pwd)":/app -w /app aws-cdk "$@"

  p6_return_void
}
