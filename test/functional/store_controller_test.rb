require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assest_select '#main .entry', 3
    assert_select 'h3', 'Programming Ruby 1.9'
    assert-select '.price', /\$[,\d]+\.\d\d/
  end

end
