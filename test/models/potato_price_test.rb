require 'test_helper'

class PotatoPriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save potato price without time" do
    potato_price = PotatoPrice.new
    assert_not potato_price.save, "Saved the potato price without a time"
  end
end
