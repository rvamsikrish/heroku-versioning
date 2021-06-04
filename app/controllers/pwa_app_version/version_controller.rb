require_dependency 'pwa_app_version/application_controller'

module PwaAppVersion
  class VersionController < ApplicationController
    def latest
      respond_to do |format|
        format.json { render json: { version: ENV['PWA_VERSION_LATEST'] } }
      end
    end
  end
end
