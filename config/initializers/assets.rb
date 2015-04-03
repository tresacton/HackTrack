# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( style-t1.css placeholder_polyfill.jquery.min.js jquery.min.js jquery.ui.map.min.js bootstrap.min.js jquery.fancybox.min.js jquery.hoverdir.min.js jquery.isotope.min.js jquery.masonry.min.js jquery.fatvids.min.js jquery.flexslider.min.js script.js)
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|tff)$/

ActionController::Base.asset_host = Proc.new { |source, request|
  if request.env["REQUEST_PATH"].include? ".pdf"
    "file://#{Rails.root.join('public')}"
  else
    "#{request.protocol}#{request.host_with_port}"
  end
 }