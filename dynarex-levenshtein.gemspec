Gem::Specification.new do |s|
  s.name = 'dynarex-levenshtein'
  s.version = '0.1.7'
  s.summary = 'dynarex-levenshtein'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('dynarex') 
  s.signing_key = '../privatekeys/dynarex-levenshtein.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/dynarex-levenshtein'
end
