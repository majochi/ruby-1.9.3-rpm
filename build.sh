cd
yum install -y rpm-build rpmdevtools libyaml-devel \
	ncurses-devel gdbm-devel tcl-devel db4-devel \
    byacc
rpmdev-setuptree
cd ~/rpmbuild/SOURCES
curl -O http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p0.tar.gz
cd ~/rpmbuild/SPECS
curl https://raw.github.com/lnxchk/ruby-1.9.3-rpm/master/ruby193.spec > ruby193.spec
rpmbuild -bb ruby193.spec
ARCH=$(uname -i)
rpm -Uvh ~/rpmbuild/RPMS/$ARCH/ruby-1.9.3p0-1.$ARCH.rpm
