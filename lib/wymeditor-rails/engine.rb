module WymeditorRails
  class Engine < ::Rails::Engine
    # this just lets rails know to load from vendor/assets
    initializer "wymeditor-rails.assets.precompile" do |app|
      app.config.assets.precompile += [
        "wymeditor/iframe/**/*",
        "wymeditor/lang/en.js",
        "jquery.wymeditor.js"
      ]
    end
  end
end