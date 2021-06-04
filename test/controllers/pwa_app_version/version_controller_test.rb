require "test_helper"

module PwaAppVersion
  class VersionControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get latest" do
      get version_latest_url
      assert_response :success
    end
  end
end
