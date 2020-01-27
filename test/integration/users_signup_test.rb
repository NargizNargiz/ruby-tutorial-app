require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get signup_path
    # сначала запрос get
    # затем post
    #
    user_params = { name:  "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar" }
     
    assert_no_difference 'User.count' do
    	post users_path, params: { user: user_params }
    end
    assert_template 'users/new'
  end
end
