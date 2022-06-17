class OpenSSL < FPM::Cookery::Recipe
  description 'OpenSSL 1.1'

  name     'openssl'
  version  '1.1.1'
  source   "https://www.openssl.org/source/openssl-1.1.1o.tar.gz"

  build_depends 'build-essential'

  def build
    cleanenv_safesystem <<-SHELL
      ./config --prefix=#{destdir} shared
    SHELL
    make
  end

  def install
    #destdir('openssl1.1').mkdir
    #safesystem "mkdir #{destdir}/openssl1.1"
    make :install
  end
end
