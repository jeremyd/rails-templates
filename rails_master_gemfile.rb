# workaround <<-GEMFILE wanting to
# execute the string subsitution
datamapper = '#{datamapper}'

remove_file 'Gemfile'
create_file 'Gemfile' do
<<-GEMFILE
source 'http://rubygems.org'

gem 'activesupport',      '~> 3.0.0.beta3', :require => 'active_support'
gem 'actionpack',         '~> 3.0.0.beta3', :require => 'action_pack'
gem 'actionmailer',       '~> 3.0.0.beta3', :require => 'action_mailer'
gem 'railties',           '~> 3.0.0.beta3', :require => 'rails'

gem 'dm-rails',             '~> 1.0.0.rc2'
gem 'dm-sqlite-adapter',    '~> 1.0.0.rc2'

# You can use any of the other available database adapters.
# This is only a small excerpt of the list of all available adapters
# Have a look at
#
#  http://wiki.github.com/datamapper/dm-core/adapters
#  http://wiki.github.com/datamapper/dm-core/community-plugins
#
# for a rather complete list of available datamapper adapters and plugins

# gem 'dm-mysql-adapter',     '~> 0.10.3', :git => "#{datamapper}/dm-mysql-adapter.git"
# gem 'dm-postgres-adapter',  '~> 0.10.3', :git => "#{datamapper}/dm-postgres-adapter.git"
# gem 'dm-oracle-adapter',    '~> 0.10.3', :git => "#{datamapper}/dm-oracle-adapter.git"
# gem 'dm-sqlserver-adapter', '~> 0.10.3', :git => "#{datamapper}/dm-sqlserver-adapter.git"

gem 'dm-migrations',        '~> 1.0.0.rc2'
gem 'dm-types',             '~> 1.0.0.rc2'
gem 'dm-validations',       '~> 1.0.0.rc2'
gem 'dm-constraints',       '~> 1.0.0.rc2'
gem 'dm-transactions',      '~> 1.0.0.rc2'
gem 'dm-aggregates',        '~> 1.0.0.rc2'
gem 'dm-timestamps',        '~> 1.0.0.rc2'
gem 'dm-observer',          '~> 1.0.0.rc2'

group(:test) do

  gem 'rspec',              '2.0.0.beta.8'
  gem 'rspec-core',         '2.0.0.beta.8',        :require => 'rspec/core'
  gem 'rspec-expectations', '2.0.0.beta.8',        :require => 'rspec/expectations'
  gem 'rspec-mocks',        '2.0.0.beta.8',        :require => 'rspec/mocks'
  gem 'rspec-rails',        '2.0.0.beta.8'

end

# ------------------------------------------------------------------------------

# These gems are only listed here in the Gemfile because we want to pin them
# to the github repositories for as long as no stable version has been released.
# The dm-core gem is a hard dependency for dm-rails so it would get pulled in by
# simply adding dm-rails. The dm-do-adapter gem is a hard dependency for any of
# the available dm-xxx-adapters. Once we have stable gems available, pinning these
# gems to github will be optional.

#gem 'dm-core',              '~> 0.10.3', :git => "#{datamapper}/dm-core.git"
#gem 'dm-do-adapter',        '~> 0.10.3', :git => "#{datamapper}/dm-do-adapter"
GEMFILE
end
