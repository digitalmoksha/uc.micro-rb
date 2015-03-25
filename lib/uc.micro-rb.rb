# encoding: utf-8

if defined?(Motion::Project::Config)
  
  lib_dir_path = File.dirname(File.expand_path(__FILE__))
  Motion::Project::App.setup do |app|
    app.files.unshift(Dir.glob(File.join(lib_dir_path, "uc.micro-rb/**/*.rb")))
  end
  
else
  
  require 'uc.micro-rb/categories/Cc/regex'
  require 'uc.micro-rb/categories/Cf/regex'
  require 'uc.micro-rb/categories/P/regex'
  require 'uc.micro-rb/categories/Z/regex'
  require 'uc.micro-rb/properties/Any/regex'
  
end