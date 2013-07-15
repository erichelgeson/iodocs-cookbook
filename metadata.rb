name              "iodocs"
maintainer        "Eric Helgeson"
maintainer_email  "erichelgeson@gmail.com"
license           "Apache 2.0"
description       "Installs iodocs from Mashery"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1"
recipe            "default", "Installs iodocs"

%w{ debian ubuntu }.each do |os|
  supports os
end

supports "ubuntu", ">= 12.10"

%w{ build-essential apt nodejs npm }.each do |cookbook|
  depends cookbook
end
