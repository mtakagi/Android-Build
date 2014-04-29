#
# Cookbook Name:: misc_package
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(git gnupg flex bison gperf build-essential
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386
  libgl1-mesa-dev g++-multilib mingw32 tofrodos
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386 valgrind).each do |pkg|
  package pkg do
    action :install
  end
end

link '/usr/lib/i386-linux-gnu/mesa/libGL.so.1' do
  to '/usr/lib/i386-linux-gnu/libGL.so'
end