# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( affiliate-signup.js affiliate-signup.css jquery.js jquery.jcarousel.min.js bootstrap.min.css home.js)
Rails.application.config.assets.precompile += %w(application.css application.js *.png *.jpg *.jpeg *.gif *.svg *.woff *.ttf *.eot)
