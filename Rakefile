require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the ekuseru plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the ekuseru plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ekuseru'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "ekuseru"
    gemspec.summary = "Export excel documents from Rails"
    gemspec.description = "Ekuseru is a gem to generate Microsoft Excel documents with Rails." +
      " This plugin provides templating abilities to create excel documents using Spreadsheet gem."
    gemspec.email = "xinuc@xinuc.org"
    gemspec.homepage = "http://github.com/xinuc/ekuseru"
    gemspec.authors = ["Nugroho Herucahyono", "Jacob Rothstein"]
    gemspec.add_dependency('spreadsheet', ">=0.6")
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
