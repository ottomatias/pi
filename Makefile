build: bundle

bundle:
	GEM_HOME=vendor/bundle gem install bundler --no-rdoc --no-ri
	GEM_HOME=vendor/bundle vendor/bundle/bin/bundle install --deployment --without test development
	vendor/bundle/bin/bundle exec rake assets:precompile

dev:
	GEM_HOME=vendor/bundle gem install bundler
	GEM_HOME=vendor/bundle vendor/bundle/bin/bundle install

clean:
	git clean -xdf
