#!/bin/bash
#Tools MR.JOKER
blue='\033[1;34m'
red='\033[1;31m'
green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
white="\033[39;1m"


cowsay -f eyes "Author from JOKER" | lolcat

toilet -f standard "WELCOME" -F gay
neofetch
date | lolcat

pkg install figlet -y

pkg install toilet -y
pkg install python -y
pkg install python2 -y
pkg install curl
pkg install perl
pip2 install --upgrade pip
pkg install ruby

gem install lolcat

pip2 install --upgrade pip
pkg install ruby


gem install lolcat


sleep 1

apt install -y autoconf bison clang coreutils axel curl findutils git apr apr-util libffi-dev libgmp-dev $
apt update && apt upgrade
echo "\033[32;1mProses Mengunduh File Pendukung"
sleep 1

# Remove Old Tars
find $HOME -name "*.16.tar.gz" -type f

# Remove Old Folders
find $HOME -name "metasploit*" -type d

cd $HOME
axel --alternate https://github.com/rapid7/metasploit-framework/archive/4.16.16.tar.gz
tar -xf $HOME/metasploit-framework-4.16.16.tar.gz
mv $HOME/metasploit-framework-4.16.16 $HOME/metasploit-framework
rm $HOME/metasploit-framework-4.16.16.tar.gz
cd $HOME/metasploit-framework
sed '/rbnacl/d' -i Gemfile.lock
sed '/rbnacl/d' -i metasploit-framework.gemspec
gem install bundle
gem install bundler
pip2 install bundler
gem install bundler -v 1.16.2
sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock
# Many phones are claiming libxml2 not found error
ln -sf $PREFIX/include/libxml2/libxml $PREFIX/include/

gem install nokogiri -v 1.8.0 -- --use-system-libraries

#sed 's|grpc (.*|grpc (1.4.1)|g' -i $HOME/metasploit-framework/Gemfile.lock
#gem unpack grpc -v 1.4.1
#cd grpc-1.4.1
#curl -LO https://raw.githubusercontent.com/grpc/grpc/v1.4.1/grpc.gemspec
#curl -L https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/extconf.patch
#patch -p1 < extconf.patch
#gem build grpc.gemspec
#gem install grpc-1.4.1.gem
#cd ..

cd $HOME/metasploit-framework
bundle install -j5
$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
rm $PREFIX/bin/msfconsole
fi
if [ -e $PREFIX/bin/msfvenom ];then
rm $PREFIX/bin/msfvenom
fi
ln -sf $HOME/metasploit-framework/msfconsole /data/data/com.termux/files/usr/bin/
ln -sf $HOME/metasploit-framework/msfvenom /data/data/com.termux/files/usr/bin/
termux-elf-cleaner /data/data/com.termux/files/usr/lib/ruby/gems/2.4.0/gems/pg-0.20.0/lib/pg_ext.so
echo "Creating database"

cd $HOME/metasploit-framework/config
curl -LO https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/database.yml

mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql
pg_ctl -D $PREFIX/var/lib/postgresql start
createuser msf
createdb msf_database 
bundle install
