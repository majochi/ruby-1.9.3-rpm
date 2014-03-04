yum install -y rpm-build rpmdevtools libyaml-devel
rpmdev-setuptree
cd ~/rpmbuild/SOURCES
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p0.tar.gz
cd ~/rpmbuild/SPECS
curl https://raw.github.com/lnxchk/ruby-1.9.3-rpm/master/ruby193.spec > ruby193.spec
rpmbuild -bb ruby193.spec
rpm -Uvh ~/rpmbuild/RPMS/x86_64/ruby-1.9.3p0-1.${ARCH}.rpm
