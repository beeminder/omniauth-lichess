Gem::Specification.new do |gem|
  gem.name    = 'omniauth-lichess'
  gem.version = 1.0
  gem.date    = "2023-03-08" 
  gem.license = 'MIT'
  gem.summary = "OmniAuth strategy for Lichess"
  gem.description = "OmniAuth strategy for Lichess"

  gem.authors  = ['Bethany Soule', 'Adam Wolf']
  gem.email    = 'support@beeminder.com'
  gem.homepage = 'https://github.com/beeminder/omniauth-lichess'

  gem.add_dependency 'omniauth-oauth2', '>= 1.1.1'

  gem.files = ['lib/omniauth-lichess.rb', 'lib/omniauth/strategies/lichess.rb']
  gem.require_paths = ['lib']
end
