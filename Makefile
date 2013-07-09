GEM_HOME=vendor/bundle
BUNDLE=$(GEM_HOME)/.bundle

IMAGE_ASSETS=app/assets/images/*.png
JAVASCRIPT_ASSETS=app/assets/javascripts/*.js vendor/assets/javascripts/*.js
COFFEE_ASSETS_ASSETS=app/assets/javascripts/*.coffee app/assets/javascripts/**/*.coffee
SCSS_ASSETS=app/assets/stylesheets/*.scss app/assets/stylesheets/**/*.scss
ASSETS=$(IMAGE_ASSETS) $(JAVASCRIPT_ASSETS) $(COFFEE_ASSETS) $(SCSS_ASSETS)

build: $(BUNDLE) public/assets

$(BUNDLE): Gemfile.lock
  GEM_HOME=$(GEM_HOME) gem install bundler --bindir bin/
  GEM_HOME=$(GEM_HOME) bin/bundle install --deployment --binstubs
  touch $(BUNDLE)

public/assets: $(ASSETS)
	bin/bundle exec rake assets:precompile

dev:
	GEM_HOME=$(GEM_HOME) gem install bundler --bindir bin/
	GEM_HOME=$(GEM_HOME) bin/bundle install --binstubs


clean:
	git clean -xdf
