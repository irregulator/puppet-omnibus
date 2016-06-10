class Libaugeas < FPM::Cookery::Recipe
  description 'Augeas is a configuration editing tool'

  name 'libaugeas'
  version '1.2'
  revision 1
  homepage 'http://augeas.net/'
  source 'http://download.augeas.net/augeas-1.2.0.tar.gz'
  sha256 'f4aeb28ebe0b0921920fe1c9b4c016739c25261a15de04cb97db02d669f481e0'

  maintainer '<github@tinycat.co.uk>'
  vendor     'fpm'
  license    'The Ruby License'

  section 'libraries'

  build_depends 'autoconf', 'bison', 'pkg-config', 'libxml2-dev'

  def build
    configure :prefix => destdir,
              'enable-shared' => true,
              'disable-install-doc' => true,
              'with-opt-dir' => destdir
    make '-s'
  end

  def install
    make :install
    safesystem "find #{destdir} -name '*.so' -or -name '*.so.*' | xargs strip"
  end
end
