name              "java_ibm"
maintainer        "Agile Orbit"
maintainer_email  "info@agileorbit.com"
license           "Apache 2.0"
description       "Installs Java runtime."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.35.0"

recipe "java_ibm::default", "Installs Java runtime"
recipe "java_ibm::default_java_symlink", "Updates /usr/lib/jvm/default-java"
recipe "java_ibm::ibm", "Installs the JDK for IBM"
recipe "java_ibm::ibm_tar", "Installs the JDK for IBM from a tarball"
recipe "java_ibm::openjdk", "Installs the OpenJDK flavor of Java"
recipe "java_ibm::oracle", "Installs the Oracle flavor of Java"
recipe "java_ibm::oracle_i386", "Installs the 32-bit jvm without setting it as the default"
recipe "java_ibm::oracle_rpm", "Installs the Oracle RPM flavor of Java"
recipe "java_ibm::purge_packages", "Purges old Sun JDK packages"
recipe "java_ibm::set_attributes_from_version", "Sets various attributes that depend on jdk_version"
recipe "java_ibm::set_java_home", "Sets the JAVA_HOME environment variable"
recipe "java_ibm::windows", "Installs the JDK on Windows"
recipe "java_ibm::homebrew", "Installs the JDK on Mac OS X via Homebrew"

%w{
    debian
    ubuntu
    centos
    redhat
    scientific
    fedora
    amazon
    arch
    oracle
    freebsd
    windows
    suse
    xenserver
    smartos
    mac_os_x
}.each do |os|
  supports os
end

suggests "homebrew"
suggests "windows"
suggests "aws"
