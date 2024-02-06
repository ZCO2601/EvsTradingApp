require "test_helper"

class PotatoPricesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "best_gain should return formatted gain" do
    PotatoPrice.create(time: "2022-08-22T09:00:00.000Z", value: 100.25)
    PotatoPrice.create(time: "2022-08-22T09:00:01.800Z", value: 100.29)

    result = PotatoPrice.best_gain
    assert_equal "4,00€", result
  end
end
