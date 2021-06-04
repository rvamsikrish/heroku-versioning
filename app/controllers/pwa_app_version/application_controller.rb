module PwaAppVersion
  class ApplicationController < ActionController::Base
    skip_before_filter :authenticate_user!
  end
end
