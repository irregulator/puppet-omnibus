#!/bin/bash
set -e
export PATH="/opt/puppet-omnibus/embedded/bin:/opt/local/bin:/sbin:/usr/sbin:$PATH"

set -x
if [ "$PKG_ITERATION" == "" ];then
  echo "PKG_ITERATION environment not set - producing debug build"
  export PKG_ITERATION=yelp-debug0
fi

if [ "$PUPPET_VERSION" == "" ];then
  echo "PUPPET_VERSION environment variable must be set"
  exit 1
fi
echo "Going for bundle install and build:"

export PUPPET_DASHVER=${PUPPET_VERSION//./-}
export PUPPET_BUILDPATH=/tmp/puppet.$PUPPET_DASHVER

cp -r /package_source/* /package/

# build puppet gem
ln -s /package/puppet-git $PUPPET_BUILDPATH # versioning here because of hardy
ls -la $PUPPET_BUILDPATH
cd $PUPPET_BUILDPATH
git checkout -q $PUPPET_VERSION
rake package:bootstrap -q
rake package:gem -q
mv pkg/puppet-$PUPPET_VERSION.gem /package/vendor/

# build omnibus package
cd /package
# Ensure a consistent json_pure version, since it is not pinned within the puppet gem and tries installing the newest available
gem install /package/vendor/cache/json_pure-1.8.6.gem
gem install /package/vendor/puppet-$PUPPET_VERSION.gem
bundle install --local --path /tmp
FPM_CACHE_DIR=/package/vendor bundle exec fpm-cook clean
FPM_CACHE_DIR=/package/vendor bundle exec fpm-cook package recipe.rb
echo "Copying package to the dist folder"
cp -v pkg/* /package_dest/
chown -R $EXT_UID:$EXT_GID /package_dest/*
echo "Package copying worked!"
exit 0
