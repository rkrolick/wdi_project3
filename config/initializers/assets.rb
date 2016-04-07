# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( app.js )
Rails.application.config.assets.precompile += %w( application.js )
Rails.application.config.assets.precompile += %w( patient.index.controller.js )
Rails.application.config.assets.precompile += %w( patient.factory.js )
Rails.application.config.assets.precompile += %w( visits.factory.js )
Rails.application.config.assets.precompile += %w( vital.factory.js )
Rails.application.config.assets.precompile += %w( cbc.factory.js )
Rails.application.config.assets.precompile += %w( ptptt.factory.js )
Rails.application.config.assets.precompile += %w( bmp.factory.js )
Rails.application.config.assets.precompile += %w( dx.factory.js )
Rails.application.config.assets.precompile += %w( rx.factory.js )
Rails.application.config.assets.precompile += %w( visit.controller.js )
Rails.application.config.assets.precompile += %w( api.factory.js )
Rails.application.config.assets.precompile += %w( patientCreate.controller.js )
