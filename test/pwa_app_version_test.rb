require "test_helper"

class PwaAppVersionTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert PwaAppVersion::VERSION
  end
end
