IMAGE_ASSETS=app/assets/images/*.png
JAVASCRIPT_ASSETS=app/assets/javascripts/*.js vendor/assets/javascripts/*.js
COFFEE_ASSETS_ASSETS=app/assets/javascripts/*.coffee app/assets/javascripts/**/*.coffee
SCSS_ASSETS=app/assets/stylesheets/*.scss app/assets/stylesheets/**/*.scss
ASSETS=$(IMAGE_ASSETS) $(JAVASCRIPT_ASSETS) $(COFFEE_ASSETS) $(SCSS_ASSETS)

build: bundle public/assets

bundle:
	GEM_HOME=vendor/bundle gem install bundler --no-rdoc --no-ri
	GEM_HOME=vendor/bundle vendor/bundle/bin/bundle install --deployment --without test development

public/assets: $(ASSETS)
	vendor/bundle/bin/bundle exec rake assets:precompile

dev:
	GEM_HOME=vendor/bundle gem install bundler
	GEM_HOME=vendor/bundle vendor/bundle/bin/bundle install

test:
	GEM_HOME=vendor/bundle foreman run vendor/bundle/bin/bundle exec rspec spec/*_spec.rb

clean:
	git clean -xdf
