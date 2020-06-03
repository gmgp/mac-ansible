- mkdir Repos
- mkdir work
- mkdir personal

git clone https://github.com/gmgp/dotfiles.git .dotfiles
cd ~/.dotfiles && bash install.sh

# imagemagick
# db

## postgresql

https://wiki.postgresql.org/wiki/Homebrew
caveat from brew

==> icu4c
icu4c is keg-only, which means it was not symlinked into /usr/local,
because macOS provides libicucore.dylib (but nothing else).

If you need to have icu4c first in your PATH run:
  echo 'export PATH="/usr/local/opt/icu4c/bin:$PATH"' >> ~/.bash_profile
  echo 'export PATH="/usr/local/opt/icu4c/sbin:$PATH"' >> ~/.bash_profile

For compilers to find icu4c you may need to set:
  export LDFLAGS="-L/usr/local/opt/icu4c/lib"
  export CPPFLAGS="-I/usr/local/opt/icu4c/include"

For pkg-config to find icu4c you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

==> krb5
krb5 is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have krb5 first in your PATH run:
  echo 'export PATH="/usr/local/opt/krb5/bin:$PATH"' >> ~/.bash_profile
  echo 'export PATH="/usr/local/opt/krb5/sbin:$PATH"' >> ~/.bash_profile

For compilers to find krb5 you may need to set:
  export LDFLAGS="-L/usr/local/opt/krb5/lib"
  export CPPFLAGS="-I/usr/local/opt/krb5/include"

For pkg-config to find krb5 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/krb5/lib/pkgconfig"


==> postgresql
To migrate existing data from a previous major version of PostgreSQL run:
  brew postgresql-upgrade-database

To have launchd start postgresql now and restart at login:
  brew services start postgresql
Or, if you don't want/need a background service you can just run:
  pg_ctl -D /usr/local/var/postgres start


## - mysql

https://medium.com/@at0dd/install-mysql-5-7-on-mac-os-mojave-cd07ec936034

brew install mysql@5.7

==> Caveats
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -uroot

mysql@5.7 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have mysql@5.7 first in your PATH run:
  echo 'export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"' >> ~/.bash_profile

For compilers to find mysql@5.7 you may need to set:
  export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
  export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"

For pkg-config to find mysql@5.7 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"


To have launchd start mysql@5.7 now and restart at login:
  brew services start mysql@5.7
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/mysql@5.7/bin/mysql.server start


brew link --force mysql@5.7

If you need to have this software first in your PATH instead consider running:
  echo 'export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"' >> ~/.bash_profile


brew services start mysql@5.7

gem install mysql2 -- --with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include


# bash

https://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/

brew install bash
## add bash to executable shell
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'



# nvm

https://medium.com/@jamesauble/install-nvm-on-mac-with-brew-adb921fb92cc

    brew install nvm

==> Caveats
Please note that upstream has asked us to make explicit managing
nvm via Homebrew is unsupported by them and you should check any
problems against the standard nvm install method prior to reporting.

You should create NVM's working directory if it doesn't exist:

    mkdir ~/.nvm

Add the following to ~/.bash_profile or your desired shell
configuration file:

    export NVM_DIR="$HOME/.nvm"
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

You can set $NVM_DIR to any location, but leaving it unchanged from
/usr/local/opt/nvm will destroy any nvm-installed Node installations
upon upgrade/reinstall.

Type `nvm help` for further information.

Bash completion has been installed to:
  /usr/local/etc/bash_completion.d



    mkdir ~/.nvm
    nvm ls-remote
    nvm install 12
    nvm use 12

    npm install -g yarn


## from imagemagick and vips

```
==> Installing dependencies for imagemagick: freetype, jpeg, libtiff, ghostscript, libde265, gettext, libffi, openssl@1.1, xz, python@3.8, glib, shared-mime-info, x265, libheif, libomp, libtool, little-cms2, ilmbase, openexr, openjpeg and webp
==> Installing imagemagick dependency: freetype
==> Downloading https://homebrew.bintray.com/bottles/freetype-2.10.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/2f/2f5716f987df6f45a9d66e5f9af935bbb4202fe0b9850b6b0660fd6555ba1be4
######################################################################## 100.0%
==> Pouring freetype-2.10.1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/freetype/2.10.1: 61 files, 2.2MB
==> Installing imagemagick dependency: jpeg
==> Downloading https://homebrew.bintray.com/bottles/jpeg-9d.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/b9/b931e7725c83275c56f962b51b83c10f31a01ac8d823c6722edaf16d893970b1
######################################################################## 100.0%
==> Pouring jpeg-9d.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/jpeg/9d: 21 files, 751KB
==> Installing imagemagick dependency: libtiff
==> Downloading https://homebrew.bintray.com/bottles/libtiff-4.1.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/dd/dd060521aa30fb2f4678c9ebab6362104a9a705d098a90eac4059743c93c8c16
######################################################################## 100.0%
==> Pouring libtiff-4.1.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libtiff/4.1.0: 247 files, 3.6MB
==> Installing imagemagick dependency: ghostscript
==> Downloading https://homebrew.bintray.com/bottles/ghostscript-9.52.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/89/8906a4dbf2513963a4710f351e3426622c259bd888c760e4c08a9436860b4014
######################################################################## 100.0%
==> Pouring ghostscript-9.52.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/ghostscript/9.52: 671 files, 87.4MB
==> Installing imagemagick dependency: libde265
==> Downloading https://homebrew.bintray.com/bottles/libde265-1.0.5.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/f0/f0b536c23ac8080dd7946dd3bcbe2517f4a9b7e50b815e1ba745277c9982e6ac
######################################################################## 100.0%
==> Pouring libde265-1.0.5.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libde265/1.0.5: 22 files, 2MB
==> Installing imagemagick dependency: gettext
==> Downloading https://homebrew.bintray.com/bottles/gettext-0.20.2_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/52/52067198cab528f05fdc0b06f7b9711f7614f60a7361f1e764c4f46d3342ff22
######################################################################## 100.0%
==> Pouring gettext-0.20.2_1.mojave.bottle.tar.gz
==> Caveats
Emacs Lisp files have been installed to:
  /usr/local/share/emacs/site-lisp/gettext
==> Summary
🍺  /usr/local/Cellar/gettext/0.20.2_1: 1,929 files, 18.7MB
==> Installing imagemagick dependency: libffi
==> Downloading https://homebrew.bintray.com/bottles/libffi-3.3.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring libffi-3.3.mojave.bottle.tar.gz
==> Caveats
libffi is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

For compilers to find libffi you may need to set:
  export LDFLAGS="-L/usr/local/opt/libffi/lib"
  export CPPFLAGS="-I/usr/local/opt/libffi/include"

For pkg-config to find libffi you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/libffi/3.3: 16 files, 484.8KB
==> Installing imagemagick dependency: openssl@1.1
==> Downloading https://homebrew.bintray.com/bottles/openssl@1.1-1.1.1g.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/5c/5c9d113393ff3efc95e5509175305fc9304fba35390a61915ed2864941c423f2
######################################################################## 100.0%
==> Pouring openssl@1.1-1.1.1g.mojave.bottle.tar.gz
==> Caveats
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl@1.1/certs

and run
  /usr/local/opt/openssl@1.1/bin/c_rehash

openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
because macOS provides LibreSSL.

If you need to have openssl@1.1 first in your PATH run:
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.bash_profile

For compilers to find openssl@1.1 you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

For pkg-config to find openssl@1.1 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/openssl@1.1/1.1.1g: 8,059 files, 18MB
==> Installing imagemagick dependency: xz
==> Downloading https://homebrew.bintray.com/bottles/xz-5.2.5.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/44/44483961b5d2b535b0ece1936c9d40b4bc7d9c7281646cca0fb476291ab9d4dc
######################################################################## 100.0%
==> Pouring xz-5.2.5.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/xz/5.2.5: 92 files, 1.1MB
==> Installing imagemagick dependency: python@3.8
==> Downloading https://homebrew.bintray.com/bottles/python@3.8-3.8.2.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/51/511b4f2c3993f000516938ed0700936c8a7d8c054b5171fa733ac7d344291c30
######################################################################## 100.0%
==> Pouring python@3.8-3.8.2.mojave.bottle.tar.gz
==> /usr/local/Cellar/python@3.8/3.8.2/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-sc
==> /usr/local/Cellar/python@3.8/3.8.2/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-sc
==> /usr/local/Cellar/python@3.8/3.8.2/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-sc
==> Caveats
Python has been installed as
  /usr/local/opt/python@3.8/bin/python3

You can install Python packages with
  /usr/local/opt/python@3.8/bin/pip3 install <package>
They will install into the site-package directory
  /usr/local/opt/python@3.8/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages

See: https://docs.brew.sh/Homebrew-and-Python

python@3.8 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have python@3.8 first in your PATH run:
  echo 'export PATH="/usr/local/opt/python@3.8/bin:$PATH"' >> ~/.bash_profile

For compilers to find python@3.8 you may need to set:
  export LDFLAGS="-L/usr/local/opt/python@3.8/lib"

For pkg-config to find python@3.8 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/python@3.8/3.8.2: 4,124 files, 62.7MB
==> Installing imagemagick dependency: glib
==> Downloading https://homebrew.bintray.com/bottles/glib-2.64.2_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/4a/4ac9833acd0b2e6f8aa81bc426db78bcf2f4783f4788006d329d65c29b1bc561
######################################################################## 100.0%
==> Pouring glib-2.64.2_1.mojave.bottle.tar.gz
==> Caveats
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
==> Summary
🍺  /usr/local/Cellar/glib/2.64.2_1: 436 files, 15.7MB
==> Installing imagemagick dependency: shared-mime-info
==> Downloading https://homebrew.bintray.com/bottles/shared-mime-info-1.15.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/1b/1be57687d8aef14d6bc95be0a02a5dfdbce4bf859ea057c93e3ff8545c700fcd
######################################################################## 100.0%
==> Pouring shared-mime-info-1.15.mojave.bottle.tar.gz
==> /usr/local/Cellar/shared-mime-info/1.15/bin/update-mime-database /usr/local/share/mime
🍺  /usr/local/Cellar/shared-mime-info/1.15: 85 files, 4.7MB
==> Installing imagemagick dependency: x265
==> Downloading https://homebrew.bintray.com/bottles/x265-3.3.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/24/242d1f5a737a53054d071d36e57d3f86aa7f3387b5622b18c706ae6847476d22
######################################################################## 100.0%
==> Pouring x265-3.3.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/x265/3.3: 11 files, 35.3MB
==> Installing imagemagick dependency: libheif
==> Downloading https://homebrew.bintray.com/bottles/libheif-1.6.2_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/f2/f2aa48c55af55eb96b0a89b3304ca4d00f58230d4cb52dc78ffc90aafa6b1566
######################################################################## 100.0%
==> Pouring libheif-1.6.2_1.mojave.bottle.tar.gz
==> /usr/local/opt/shared-mime-info/bin/update-mime-database /usr/local/share/mime
🍺  /usr/local/Cellar/libheif/1.6.2_1: 23 files, 2.3MB
==> Installing imagemagick dependency: libomp
==> Downloading https://homebrew.bintray.com/bottles/libomp-10.0.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/ae/aecd306b605763dbd06c73b5d470c924643b48c051f06d8a4e70be705052c8ee
######################################################################## 100.0%
==> Pouring libomp-10.0.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libomp/10.0.0: 9 files, 1.3MB
==> Installing imagemagick dependency: libtool
==> Downloading https://homebrew.bintray.com/bottles/libtool-2.4.6_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/c9/c92ab35c3706c255a36b733aa7a475159da9cf375c275d230fd6a7802a94e4dc
######################################################################## 100.0%
==> Pouring libtool-2.4.6_1.mojave.bottle.tar.gz
==> Caveats
In order to prevent conflicts with Apple's own libtool we have prepended a "g"
so, you have instead: glibtool and glibtoolize.
==> Summary
🍺  /usr/local/Cellar/libtool/2.4.6_1: 71 files, 3.7MB
==> Installing imagemagick dependency: little-cms2
==> Downloading https://homebrew.bintray.com/bottles/little-cms2-2.9.mojave.bottle.1.tar.gz
==> Downloading from https://akamai.bintray.com/1c/1c69f212b9754cbc1700e822ceb659103cb692afe2e26366c9ae9eb9e3fc612d
######################################################################## 100.0%
==> Pouring little-cms2-2.9.mojave.bottle.1.tar.gz
🍺  /usr/local/Cellar/little-cms2/2.9: 18 files, 1MB
==> Installing imagemagick dependency: ilmbase
==> Downloading https://homebrew.bintray.com/bottles/ilmbase-2.4.1.mojave.bottle.1.tar.gz
==> Downloading from https://akamai.bintray.com/26/26209d6086178373e08d8ca6f5acf1c3b49e6896e1fa4eff0c06a3bd91f7b550
######################################################################## 100.0%
==> Pouring ilmbase-2.4.1.mojave.bottle.1.tar.gz
🍺  /usr/local/Cellar/ilmbase/2.4.1: 86 files, 1.4MB
==> Installing imagemagick dependency: openexr
==> Downloading https://homebrew.bintray.com/bottles/openexr-2.4.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/d9/d9cfcbd95203891e434ed18ffba6cc7e3ccf30295258b9335fa75ab385e74311
######################################################################## 100.0%
==> Pouring openexr-2.4.1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/openexr/2.4.1: 151 files, 6.8MB
==> Installing imagemagick dependency: openjpeg
==> Downloading https://homebrew.bintray.com/bottles/openjpeg-2.3.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/6d/6de317bfef3ab808ff5f3eb9c1aa47f77e7236fba8ad0d606b29b38eb47c321e
######################################################################## 100.0%
==> Pouring openjpeg-2.3.1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/openjpeg/2.3.1: 516 files, 12.8MB
==> Installing imagemagick dependency: webp
==> Downloading https://homebrew.bintray.com/bottles/webp-1.1.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/81/819c76cbf75c1d1d51db88602b69a9d9cd24975cc65834a9eb5a804c4b96ee35
######################################################################## 100.0%
==> Pouring webp-1.1.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/webp/1.1.0: 39 files, 2.1MB
==> Installing imagemagick
==> Downloading https://homebrew.bintray.com/bottles/imagemagick-7.0.10-7.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/40/4026d99d56a65f4ef135dddfd998bd9c2b6130d7a4acb0cf1636568c58274556
######################################################################## 100.0%
==> Pouring imagemagick-7.0.10-7.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/imagemagick/7.0.10-7: 1,493 files, 23.8MB
==> `brew cleanup` has not been run in 30 days, running now...
Removing: /Users/gmgp/Library/Caches/Homebrew/autoconf--2.69.mojave.bottle.4.tar.gz... (874.7KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/bash-completion--1.3_3.mojave.bottle.tar.gz... (142.7KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/colordiff--1.0.18.mojave.bottle.tar.gz... (18.6KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/curl--7.69.0.mojave.bottle.tar.gz... (1MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/gdbm--1.18.1.mojave.bottle.1.tar.gz... (196.2KB)
Removing: /usr/local/Cellar/gettext/0.20.1... (1,899 files, 18.5MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/gettext--0.20.1.mojave.bottle.tar.gz... (8.4MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/git--2.25.0_1.mojave.bottle.tar.gz... (17MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/gitlab-runner--12.9.0.mojave.bottle.tar.gz... (19.3MB)
Removing: /usr/local/Cellar/glib/2.64.1... (436 files, 15.6MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/glib--2.64.1.mojave.bottle.tar.gz... (4.6MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/heroku--7.39.0.tar.xz... (6.7MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/heroku-node--12.13.0.tar.xz... (8.8MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/icu4c--64.2.mojave.bottle.tar.gz... (26.1MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/krb5--1.18.mojave.bottle.tar.gz... (1.3MB)
Removing: /usr/local/Cellar/libffi/3.2.1... (16 files, 296.8KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/libffi--3.2.1.mojave.bottle.tar.gz... (91.8KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/libidn2--2.3.0.mojave.bottle.tar.gz... (233.3KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/libunistring--0.9.10.mojave.bottle.tar.gz... (1.4MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/libyaml--0.2.2.mojave.bottle.tar.gz... (100.9KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/lua--5.3.5_1.mojave.bottle.tar.gz... (113.9KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/moreutils--0.63.mojave.bottle.tar.gz... (155.7KB)
Removing: /usr/local/Cellar/openssl@1.1/1.1.1d... (7,983 files, 17.9MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/openssl@1.1--1.1.1d.mojave.bottle.tar.gz... (5.2MB)
Removing: /usr/local/Cellar/pcre/8.43... (204 files, 5.5MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/pcre2--10.34.mojave.bottle.tar.gz... (1.9MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/perl--5.30.1.mojave.bottle.tar.gz... (16.3MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/pkg-config--0.29.2.mojave.bottle.1.tar.gz... (234.3KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/pyenv--1.2.16.mojave.bottle.tar.gz... (629.9KB)
Removing: /usr/local/Cellar/python/3.7.5... (3,972 files, 60.7MB)
Removing: /usr/local/Cellar/python/3.7.6_1... (3,977 files, 60.8MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/python--3.7.6_1.mojave.bottle.tar.gz... (14.8MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/rbenv--1.1.2.mojave.bottle.tar.gz... (19KB)
Removing: /usr/local/Cellar/readline/8.0.1... (48 files, 1.5MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/ruby--2.7.0.mojave.bottle.1.tar.gz... (9.3MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/ruby-build--20200224.tar.gz... (63.6KB)
Removing: /usr/local/Cellar/sqlite/3.30.1... (11 files, 3.9MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/the_silver_searcher--2.2.0.mojave.bottle.tar.gz... (44.2KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/tree--1.8.0.mojave.bottle.tar.gz... (49.9KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/vim--8.2.0350.mojave.bottle.tar.gz... (11.2MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/wget--1.20.3_2.mojave.bottle.tar.gz... (1.4MB)
Removing: /usr/local/Cellar/xz/5.2.4... (92 files, 1MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/xz--5.2.4.mojave.bottle.tar.gz... (373.5KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/z--1.9.tar.gz... (5.8KB)
Removing: /Users/gmgp/Library/Caches/Homebrew/portable-ruby-2.6.3.mavericks.bottle.tar.gz... (9.0MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/virtualbox--6.1.4,136177.dmg... (123MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/docker--2.2.0.3,42716.dmg... (675.3MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/firefox--73.0.1.dmg... (66.6MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/google-earth-pro--7.3.2.5776.dmg... (69.8MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/dash--5.1.3.zip... (15.7MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/keepassxc--2.5.3.dmg... (28.8MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/postman--7.21.1... (85.1MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/virtualbox-extension-pack--6.1.4.vbox-extpack... (10.5MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/libreoffice--6.4.1.dmg... (242.5MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/meld--3.19.2-r6,osx-15.dmg... (23.0MB)
Removing: /Users/gmgp/Library/Caches/Homebrew/Cask/google-drive-file-stream--latest.dmg... (105.7MB)
Removing: /Users/gmgp/Library/Logs/Homebrew/midnight-commander... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/pyenv... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/vim... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/postgresql... (1.2KB)
Removing: /Users/gmgp/Library/Logs/Homebrew/multitail... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/libpng... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/ncurses... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/heroku... (114B)
Removing: /Users/gmgp/Library/Logs/Homebrew/python... (3 files, 148.3KB)
Removing: /Users/gmgp/Library/Logs/Homebrew/less... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/icu4c... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/perl... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/glib... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/readline... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/s-lang... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/ruby-build... (2 files, 179B)
Removing: /Users/gmgp/Library/Logs/Homebrew/sqlite... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/nvm... (99B)
Removing: /Users/gmgp/Library/Logs/Homebrew/bash... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/htop... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/curl... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/krb5... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/libssh2... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/heroku-node... (119B)
Removing: /Users/gmgp/Library/Logs/Homebrew/watch... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/pcre... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/mysql@5.7... (1.3KB)
Removing: /Users/gmgp/Library/Logs/Homebrew/ssh-copy-id... (107B)
Removing: /Users/gmgp/Library/Logs/Homebrew/ack... (2 files, 209B)
Removing: /Users/gmgp/Library/Logs/Homebrew/ruby... (64B)
Removing: /Users/gmgp/Library/Logs/Homebrew/gitlab-runner... (64B)
Pruned 0 symbolic links and 13 directories from /usr/local
==> Installing dependencies for vips: cfitsio, gmp, isl, mpfr, libmpc, gcc, hwloc, libevent, open-mpi, fftw, fontconfig, giflib, libexif, libgsf, libimagequant, szip, hdf5, libmatio, lzo, pixman, cairo, gdk-pixbuf, libcroco, fribidi, graphite2, icu4c, harfbuzz, pango, librsvg, mozjpeg, libxml2, openslide, orc, nspr, nss, qt and poppler
==> Installing vips dependency: cfitsio
==> Downloading https://homebrew.bintray.com/bottles/cfitsio-3.470.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/8b/8b726717e06bde963e9935a5e8d3abaf8e77107afdeff90e2550997dc689b7c7
######################################################################## 100.0%
==> Pouring cfitsio-3.470.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/cfitsio/3.470: 17 files, 3.2MB
==> Installing vips dependency: gmp
==> Downloading https://homebrew.bintray.com/bottles/gmp-6.2.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/1b/1bbea4983a4c883c8eb8b7e19df9fab52f0575be8a34b629fc7df79895f48937
######################################################################## 100.0%
==> Pouring gmp-6.2.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/gmp/6.2.0: 20 files, 3.2MB
==> Installing vips dependency: isl
==> Downloading https://homebrew.bintray.com/bottles/isl-0.22.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/29/29213891860c971e084d1e2a3d1ad00c92371140dea599aae2894e26ec0d6874
######################################################################## 100.0%
==> Pouring isl-0.22.1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/isl/0.22.1: 72 files, 4.7MB
==> Installing vips dependency: mpfr
==> Downloading https://homebrew.bintray.com/bottles/mpfr-4.0.2.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/cf/cfce7ab866e98360c9364cd924da620ae7936d3a224d686aacc209c2107d19aa
######################################################################## 100.0%
==> Pouring mpfr-4.0.2.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/mpfr/4.0.2: 28 files, 4.7MB
==> Installing vips dependency: libmpc
==> Downloading https://homebrew.bintray.com/bottles/libmpc-1.1.0.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring libmpc-1.1.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libmpc/1.1.0: 12 files, 354KB
==> Installing vips dependency: gcc
==> Downloading https://homebrew.bintray.com/bottles/gcc-9.3.0_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/de/de8319322428721741a0dc41dfdf2eece80e0215a7a4a861e0e206a9bfbca583
######################################################################## 100.0%
==> Pouring gcc-9.3.0_1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/gcc/9.3.0_1: 1,463 files, 292MB
==> Installing vips dependency: hwloc
==> Downloading https://homebrew.bintray.com/bottles/hwloc-2.2.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/06/06104c9e69d96e85f4c914ef6bcae0a3275a0910a6a592b9d6ba1b20d2ad6301
######################################################################## 100.0%
==> Pouring hwloc-2.2.0.mojave.bottle.tar.gz
==> Caveats
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
==> Summary
🍺  /usr/local/Cellar/hwloc/2.2.0: 885 files, 9.4MB
==> Installing vips dependency: libevent
==> Downloading https://homebrew.bintray.com/bottles/libevent-2.1.11_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/1e/1e14fc34baae0b65cac6d7c75bc5ed0ccb1f6bbaa30c8f0f8477ab8ba85fb3c5
######################################################################## 100.0%
==> Pouring libevent-2.1.11_1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libevent/2.1.11_1: 1,063 files, 5MB
==> Installing vips dependency: open-mpi
==> Downloading https://homebrew.bintray.com/bottles/open-mpi-4.0.3.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/16/1600986b4774f6081191fe616cc70690d0174c4a32f4d7f280285ddc39970437
######################################################################## 100.0%
==> Pouring open-mpi-4.0.3.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/open-mpi/4.0.3: 752 files, 10.7MB
==> Installing vips dependency: fftw
==> Downloading https://homebrew.bintray.com/bottles/fftw-3.3.8_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/fa/fafc0d1b43619cf3ac63946a4380782747903378dfb4f7b21387c40131ad2d59
######################################################################## 100.0%
==> Pouring fftw-3.3.8_1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/fftw/3.3.8_1: 73 files, 14.7MB
==> Installing vips dependency: fontconfig
==> Downloading https://homebrew.bintray.com/bottles/fontconfig-2.13.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/1c/1c704a5a4249252bf42dc4f2a458f911a7858a931858ad257d9ec39978ca5095
######################################################################## 100.0%
==> Pouring fontconfig-2.13.1.mojave.bottle.tar.gz
==> Regenerating font cache, this may take a while
==> /usr/local/Cellar/fontconfig/2.13.1/bin/fc-cache -frv
🍺  /usr/local/Cellar/fontconfig/2.13.1: 531 files, 3.3MB
==> Installing vips dependency: giflib
==> Downloading https://homebrew.bintray.com/bottles/giflib-5.2.1.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring giflib-5.2.1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/giflib/5.2.1: 19 files, 354.9KB
==> Installing vips dependency: libexif
==> Downloading https://homebrew.bintray.com/bottles/libexif-0.6.21.mojave.bottle.1.tar.gz
==> Downloading from https://akamai.bintray.com/f2/f2825b7f043b7e1128a8a234132622041669d6fd0b537c22dc0d06284a96c095
######################################################################## 100.0%
==> Pouring libexif-0.6.21.mojave.bottle.1.tar.gz
🍺  /usr/local/Cellar/libexif/0.6.21: 31 files, 785KB
==> Installing vips dependency: libgsf
==> Downloading https://homebrew.bintray.com/bottles/libgsf-1.14.47.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/a0/a051f21e80044277fafb60264c915cb79ce5f64059e9737f7a15795bc79ad3c8
######################################################################## 100.0%
==> Pouring libgsf-1.14.47.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libgsf/1.14.47: 153 files, 2.3MB
==> Installing vips dependency: libimagequant
==> Downloading https://homebrew.bintray.com/bottles/libimagequant-2.12.6.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring libimagequant-2.12.6.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libimagequant/2.12.6: 10 files, 175.6KB
==> Installing vips dependency: szip
==> Downloading https://homebrew.bintray.com/bottles/szip-2.1.1_1.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring szip-2.1.1_1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/szip/2.1.1_1: 11 files, 109.4KB
==> Installing vips dependency: hdf5
==> Downloading https://homebrew.bintray.com/bottles/hdf5-1.12.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/77/77cf2db15c52c69da64ca5535eb03e44ec2bd953cbb2166996580739db467241
######################################################################## 100.0%
==> Pouring hdf5-1.12.0.mojave.bottle.tar.gz
Warning: hdf5 dependency gcc was built with a different C++ standard
library (libstdc++ from clang). This may cause problems at runtime.
🍺  /usr/local/Cellar/hdf5/1.12.0: 268 files, 16.2MB
==> Installing vips dependency: libmatio
==> Downloading https://homebrew.bintray.com/bottles/libmatio-1.5.17_2.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/fb/fb0f8804978485fedcdd4cd8b6800840aa0b25778be9bbfab29b4dcabb76f5d8
######################################################################## 100.0%
==> Pouring libmatio-1.5.17_2.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libmatio/1.5.17_2: 38 files, 861.1KB
==> Installing vips dependency: lzo
==> Downloading https://homebrew.bintray.com/bottles/lzo-2.10.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring lzo-2.10.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/lzo/2.10: 31 files, 549.7KB
==> Installing vips dependency: pixman
==> Downloading https://homebrew.bintray.com/bottles/pixman-0.40.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/70/70a476e6b14fdfa42188d3df2797f8c13f25bd633528164b0d42c5fb70dfb431
######################################################################## 100.0%
==> Pouring pixman-0.40.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/pixman/0.40.0: 14 files, 1.3MB
==> Installing vips dependency: cairo
==> Downloading https://homebrew.bintray.com/bottles/cairo-1.16.0_3.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/09/0984045234fb22fa3e54a337137e9e43a1bf997f5d77692ed02249dfdee2b1bf
######################################################################## 100.0%
==> Pouring cairo-1.16.0_3.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/cairo/1.16.0_3: 117 files, 5.5MB
==> Installing vips dependency: gdk-pixbuf
==> Downloading https://homebrew.bintray.com/bottles/gdk-pixbuf-2.40.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/9d/9d9602f291e4023873a0f76cbff3e6c0de7456567ade57a178fad4939904043d
######################################################################## 100.0%
==> Pouring gdk-pixbuf-2.40.0.mojave.bottle.tar.gz
==> /usr/local/Cellar/gdk-pixbuf/2.40.0/bin/gdk-pixbuf-query-loaders --update-cache
🍺  /usr/local/Cellar/gdk-pixbuf/2.40.0: 149 files, 3.3MB
==> Installing vips dependency: libcroco
==> Downloading https://homebrew.bintray.com/bottles/libcroco-0.6.13_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/ed/edf97f493296bfe01b2a8cfe156f1e8052e181bed6ea34cabaf18ed59ef28b17
######################################################################## 100.0%
==> Pouring libcroco-0.6.13_1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libcroco/0.6.13_1: 80 files, 1.7MB
==> Installing vips dependency: fribidi
==> Downloading https://homebrew.bintray.com/bottles/fribidi-1.0.9.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring fribidi-1.0.9.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/fribidi/1.0.9: 67 files, 600.4KB
==> Installing vips dependency: graphite2
==> Downloading https://homebrew.bintray.com/bottles/graphite2-1.3.14.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring graphite2-1.3.14.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/graphite2/1.3.14: 18 files, 231.3KB
==> Installing vips dependency: icu4c
==> Downloading https://homebrew.bintray.com/bottles/icu4c-66.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/60/60e51b89507cf03f1d6ed59deda226b600f96f763dea9a415dfa8ebb42c197a0
######################################################################## 100.0%
==> Pouring icu4c-66.1.mojave.bottle.tar.gz
==> Caveats
icu4c is keg-only, which means it was not symlinked into /usr/local,
because macOS provides libicucore.dylib (but nothing else).

If you need to have icu4c first in your PATH run:
  echo 'export PATH="/usr/local/opt/icu4c/bin:$PATH"' >> ~/.bash_profile
  echo 'export PATH="/usr/local/opt/icu4c/sbin:$PATH"' >> ~/.bash_profile

For compilers to find icu4c you may need to set:
  export LDFLAGS="-L/usr/local/opt/icu4c/lib"
  export CPPFLAGS="-I/usr/local/opt/icu4c/include"

For pkg-config to find icu4c you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/icu4c/66.1: 258 files, 70.3MB
==> Installing vips dependency: harfbuzz
==> Downloading https://homebrew.bintray.com/bottles/harfbuzz-2.6.5_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/ec/ecb10687976791aea5a31fa31fd52bbac7b2700c07ff4f1e6855f61125a624a1
######################################################################## 100.0%
==> Pouring harfbuzz-2.6.5_1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/harfbuzz/2.6.5_1: 159 files, 11.3MB
==> Installing vips dependency: pango
==> Downloading https://homebrew.bintray.com/bottles/pango-1.44.7.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/64/643284e68fcb4699572e7ab327a16ae3eb1c242527a96cb404cd98f14f22a893
######################################################################## 100.0%
==> Pouring pango-1.44.7.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/pango/1.44.7: 62 files, 4.3MB
==> Installing vips dependency: librsvg
==> Downloading https://homebrew.bintray.com/bottles/librsvg-2.48.4.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/fd/fd169a74136443adc6e5f66869abea18d2ae881a009548a60a38ae9892dee2ac
######################################################################## 100.0%
==> Pouring librsvg-2.48.4.mojave.bottle.tar.gz
==> /usr/local/opt/gdk-pixbuf/bin/gdk-pixbuf-query-loaders --update-cache
🍺  /usr/local/Cellar/librsvg/2.48.4: 47 files, 121.7MB
==> Installing vips dependency: mozjpeg
==> Downloading https://homebrew.bintray.com/bottles/mozjpeg-3.3.1_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/8f/8f84ae70b36cba861c17bc0b7f3befa2e3d30fc807cadd70ed7af0521de325cb
######################################################################## 100.0%
==> Pouring mozjpeg-3.3.1_1.mojave.bottle.tar.gz
==> Caveats
mozjpeg is keg-only, which means it was not symlinked into /usr/local,
because mozjpeg is not linked to prevent conflicts with the standard libjpeg.

If you need to have mozjpeg first in your PATH run:
  echo 'export PATH="/usr/local/opt/mozjpeg/bin:$PATH"' >> ~/.bash_profile

For compilers to find mozjpeg you may need to set:
  export LDFLAGS="-L/usr/local/opt/mozjpeg/lib"
  export CPPFLAGS="-I/usr/local/opt/mozjpeg/include"

For pkg-config to find mozjpeg you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/mozjpeg/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/mozjpeg/3.3.1_1: 37 files, 3.0MB
==> Installing vips dependency: libxml2
==> Downloading https://homebrew.bintray.com/bottles/libxml2-2.9.10_1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/71/7185d4c64a25e546eaf525134210bfb21edffb0bfa93c122e4696ab3788cfbf3
######################################################################## 100.0%
==> Pouring libxml2-2.9.10_1.mojave.bottle.tar.gz
==> Caveats
libxml2 is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have libxml2 first in your PATH run:
  echo 'export PATH="/usr/local/opt/libxml2/bin:$PATH"' >> ~/.bash_profile

For compilers to find libxml2 you may need to set:
  export LDFLAGS="-L/usr/local/opt/libxml2/lib"
  export CPPFLAGS="-I/usr/local/opt/libxml2/include"

For pkg-config to find libxml2 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/libxml2/2.9.10_1: 280 files, 10.5MB
==> Installing vips dependency: openslide
==> Downloading https://homebrew.bintray.com/bottles/openslide-3.4.1_5.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring openslide-3.4.1_5.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/openslide/3.4.1_5: 16 files, 325.6KB
==> Installing vips dependency: orc
==> Downloading https://homebrew.bintray.com/bottles/orc-0.4.31.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/b9/b9c58730d763ca611867504ff7005245e95ca435b027d85ff7f7471dc7431b59
######################################################################## 100.0%
==> Pouring orc-0.4.31.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/orc/0.4.31: 51 files, 1MB
==> Installing vips dependency: nspr
==> Downloading https://homebrew.bintray.com/bottles/nspr-4.25.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/4e/4ea0a985bdca85cc08510a2a8e5f1aa2d295bcd0bc2fc048b174f9432c4eb8bc
######################################################################## 100.0%
==> Pouring nspr-4.25.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/nspr/4.25: 86 files, 1.1MB
==> Installing vips dependency: nss
==> Downloading https://homebrew.bintray.com/bottles/nss-3.51.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/d4/d40bb6b9433d8ff889cd62a78310465b6c6e3db1e7c51e47b465244c4d3cf498
######################################################################## 100.0%
==> Pouring nss-3.51.1.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/nss/3.51.1: 225 files, 30.2MB
==> Installing vips dependency: qt
==> Downloading https://homebrew.bintray.com/bottles/qt-5.14.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/14/149a1c2d2af7afda9910e1d4e3956c27ffa31ea511a8320930abf7a9079d0330
######################################################################## 100.0%
==> Pouring qt-5.14.1.mojave.bottle.tar.gz
==> Caveats
We agreed to the Qt open source license for you.
If this is unacceptable you should uninstall.

qt is keg-only, which means it was not symlinked into /usr/local,
because Qt 5 has CMake issues when linked.

If you need to have qt first in your PATH run:
  echo 'export PATH="/usr/local/opt/qt/bin:$PATH"' >> ~/.bash_profile

For compilers to find qt you may need to set:
  export LDFLAGS="-L/usr/local/opt/qt/lib"
  export CPPFLAGS="-I/usr/local/opt/qt/include"

For pkg-config to find qt you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/qt/5.14.1: 10,389 files, 363.0MB
==> Installing vips dependency: poppler
==> Downloading https://homebrew.bintray.com/bottles/poppler-0.87.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/d8/d83dd3e16516b27784a8410a6d47f637a6c7af87b01835261f9f2dc44a310646
######################################################################## 100.0%
==> Pouring poppler-0.87.0.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/poppler/0.87.0: 458 files, 24.3MB
==> Installing vips
==> Downloading https://homebrew.bintray.com/bottles/vips-8.9.2.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/39/39c969ebbab187369ffe78759ba2562a7fe8dfdc566fab656cd6436d72a05e10
######################################################################## 100.0%
==> Pouring vips-8.9.2.mojave.bottle.tar.gz
Warning: vips dependency gcc was built with a different C++ standard
library (libstdc++ from clang). This may cause problems at runtime.
🍺  /usr/local/Cellar/vips/8.9.2: 181 files, 12MB
==> Caveats
==> gettext
Emacs Lisp files have been installed to:
  /usr/local/share/emacs/site-lisp/gettext
==> libffi
libffi is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

For compilers to find libffi you may need to set:
  export LDFLAGS="-L/usr/local/opt/libffi/lib"
  export CPPFLAGS="-I/usr/local/opt/libffi/include"

For pkg-config to find libffi you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

==> openssl@1.1
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl@1.1/certs

and run
  /usr/local/opt/openssl@1.1/bin/c_rehash

openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
because macOS provides LibreSSL.

If you need to have openssl@1.1 first in your PATH run:
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.bash_profile

For compilers to find openssl@1.1 you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

For pkg-config to find openssl@1.1 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

==> python@3.8
Python has been installed as
  /usr/local/opt/python@3.8/bin/python3

You can install Python packages with
  /usr/local/opt/python@3.8/bin/pip3 install <package>
They will install into the site-package directory
  /usr/local/opt/python@3.8/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages

See: https://docs.brew.sh/Homebrew-and-Python

python@3.8 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have python@3.8 first in your PATH run:
  echo 'export PATH="/usr/local/opt/python@3.8/bin:$PATH"' >> ~/.bash_profile

For compilers to find python@3.8 you may need to set:
  export LDFLAGS="-L/usr/local/opt/python@3.8/lib"

For pkg-config to find python@3.8 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig"

==> glib
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
==> libtool
In order to prevent conflicts with Apple's own libtool we have prepended a "g"
so, you have instead: glibtool and glibtoolize.
==> hwloc
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
==> icu4c
icu4c is keg-only, which means it was not symlinked into /usr/local,
because macOS provides libicucore.dylib (but nothing else).

If you need to have icu4c first in your PATH run:
  echo 'export PATH="/usr/local/opt/icu4c/bin:$PATH"' >> ~/.bash_profile
  echo 'export PATH="/usr/local/opt/icu4c/sbin:$PATH"' >> ~/.bash_profile

For compilers to find icu4c you may need to set:
  export LDFLAGS="-L/usr/local/opt/icu4c/lib"
  export CPPFLAGS="-I/usr/local/opt/icu4c/include"

For pkg-config to find icu4c you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

==> mozjpeg
mozjpeg is keg-only, which means it was not symlinked into /usr/local,
because mozjpeg is not linked to prevent conflicts with the standard libjpeg.

If you need to have mozjpeg first in your PATH run:
  echo 'export PATH="/usr/local/opt/mozjpeg/bin:$PATH"' >> ~/.bash_profile

For compilers to find mozjpeg you may need to set:
  export LDFLAGS="-L/usr/local/opt/mozjpeg/lib"
  export CPPFLAGS="-I/usr/local/opt/mozjpeg/include"

For pkg-config to find mozjpeg you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/mozjpeg/lib/pkgconfig"

==> libxml2
libxml2 is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have libxml2 first in your PATH run:
  echo 'export PATH="/usr/local/opt/libxml2/bin:$PATH"' >> ~/.bash_profile

For compilers to find libxml2 you may need to set:
  export LDFLAGS="-L/usr/local/opt/libxml2/lib"
  export CPPFLAGS="-I/usr/local/opt/libxml2/include"

For pkg-config to find libxml2 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"

==> qt
We agreed to the Qt open source license for you.
If this is unacceptable you should uninstall.

qt is keg-only, which means it was not symlinked into /usr/local,
because Qt 5 has CMake issues when linked.

If you need to have qt first in your PATH run:
  echo 'export PATH="/usr/local/opt/qt/bin:$PATH"' >> ~/.bash_profile

For compilers to find qt you may need to set:
  export LDFLAGS="-L/usr/local/opt/qt/lib"
  export CPPFLAGS="-I/usr/local/opt/qt/include"

For pkg-config to find qt you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"
````

