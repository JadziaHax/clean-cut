Gem::Specification.new do |s|
  s.name        = 'clean-cut'
  s.version     = '0.0.1'
  s.executables << 'clean-cut'
  s.date        = '2017-01-29'
  s.summary     = "A simple gem that cuts a string at a character limit without spliting any word that is not fully inside the character limit."
  s.description = "Specify a character limit and a string. Returns an array with the first and second parts of the original string as two new strings without splitting any words."
  s.authors     = ["Jadzia Thomas"]
  s.email       = '<email hidden>'
  s.files       = ["lib/clean-cut.rb"]
  s.homepage    =
    'http://rubygems.org/gems/clean-cut'
  s.license       = 'MIT'
end
