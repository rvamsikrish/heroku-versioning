module PwaAppVersion
  class Engine < ::Rails::Engine
    isolate_namespace PwaAppVersion
    initializer 'pwa_app_version', before: :load_config_initializers do |_app|
      Rails.application.routes.prepend do
        mount PwaAppVersion::Engine => '/pwa_app_version'
      end
    end
  end
end
