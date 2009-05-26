require 'rubygems'
require 'rack/router'
require 'extlib'

%w(
  master
  configuration
  bootloaders
  middleware 
  router
  stack/stack
  stack/inheritance
  stack/configuration
  stack/app
  stack/router
  stack/bootloader
).each do |file|
  path = File.join(File.dirname(__FILE__), "pancake")
  require File.join(path, file)
end


module Pancake
  # A simple rack application 
  OK_APP = lambda{|e| [200, {"Content-Type" => "text/plain", "Content-Length" => "2"},"OK"]}
  # OK_APP = lambda{|e| [200, {"Content-Type" => "text/plain"},"OK"]}
end # Panckae