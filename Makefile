build: bundle

bundle:
	gem install bundler --bindir bin/
	bin/bundle install --deployment --binstubs
	bin/rake assets:precompile

dev:
	gem install bundler --bindir bin/
	bin/bundle install --binstubs


clean:
	git clean -xdf
