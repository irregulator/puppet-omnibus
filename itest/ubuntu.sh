#!/bin/bash

cd /

if [ -z "$*" ]; then
  echo "$0 requires at least two arguments (path to package to install and puppet version)."
  exit 1
else
  package_to_install=$1
  puppet_version=$2
  echo "Going to run integration tests on $package_to_install"
fi

if [ -e /opt/puppet-omnibus ]; then
  echo "puppet-omnibus looks like is already here?"
  exit 1
fi

if gdebi -n $package_to_install; then
  echo "Looks like it installed correctly"
else
  echo "Dpkg install failed"
  exit 1
fi

if [ -d /opt/puppet-omnibus ]; then
  echo "puppet-omnibus looks like it exists"
else
  echo "puppet-omnibus doesnt look like it is installed"
  exit 1
fi

if [ "$(/opt/puppet-omnibus/bin/puppet --version)" == "$puppet_version" ]; then
  echo "puppet-omnibus looks like it works and has version $puppet_version!"
else
  echo "puppet-omnibus --version failed or was not version $puppet_version"
  exit 1
fi

if /opt/puppet-omnibus/embedded/bin/ruby -v; then
  echo "puppet-omnibus contains a ruby that ran correctly!"
else
  echo "puppet-omnibus doesn't contain an ruby or it errored showing its version"
  exit 1
fi

if /opt/puppet-omnibus/embedded/bin/nginx -V; then
  echo "puppet-omnibus contains a nginx that ran correctly!"
else
  echo "puppet-omnibus doesn't contain an nginx or it errored showing its version"
  exit 1
fi

COUNT=$(find /opt/puppet-omnibus/embedded/lib/ruby/gems/*/gems/puppet-[0-9]* -maxdepth 0 | wc -l)
if [ "$COUNT" == "1" ]; then
  echo "We have exactly 1 puppet gem version installed"
else
  echo "We have $COUNT puppet gem versions installed, not 1"
  exit 1
fi

set -e
(/opt/puppet-omnibus/embedded/bin/gem list | grep -q augeas) || (echo "Augeas gem is missing" && exit 1)
(/opt/puppet-omnibus/embedded/bin/gem list | grep -q aws-sdk) || (echo "AWS-SDK gem is missing" && exit 1)
