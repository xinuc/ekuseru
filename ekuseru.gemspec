$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = %q{ekuseru}
  s.version = "0.3.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nugroho Herucahyono", "Jacob Rothstein"]
  s.date = %q{2011-11-21}
  s.description = %q{Ekuseru is a gem to generate Microsoft Excel documents with Rails. This plugin provides templating abilities to create excel documents using Spreadsheet gem.}
  s.email = %q{xinuc@xinuc.org}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.homepage = %q{http://github.com/xinuc/ekuseru}
  s.rubygems_version = %q{1.5.3}
  s.summary = %q{Export excel documents from Rails}
   
  s.add_dependency 'rails', '>=3.0'
  s.add_dependency 'spreadsheet', '>=0.6'

end

