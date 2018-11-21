Gem::Specification.new do |s|
  s.name = %q{OPC-XML DA GEM}
  s.version = "0.0.1"
  s.date = %q{2018-11-20}
  s.summary = %q{basic implementation of OPC-XML DA}
  s.files = [
    "lib/opc_gem.rb"
  ]
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'savon', '~> 2.12.0'
end
