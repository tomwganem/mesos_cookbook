name 'mesos'
maintainer 'Ray Rodriguez'
maintainer_email 'rayrod2030@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures Apache Mesos'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.6.0'
# rubocop:enable Style/SingleSpaceBeforeFirstArg

%w(ubuntu debian centos amazon scientific oracle).each do |os|
  supports os
end

# Cookbook dependencies
%w(java apt).each do |cb|
  depends cb
end

depends 'yum', '~> 3.0'

suggests 'exhibitor', '0.4.0'
