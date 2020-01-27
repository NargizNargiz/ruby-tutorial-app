require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
  	get signup_path
    # сначала запрос get
    # затем post
    # если руками все делать - то нужно было бы заходить
    # на страницу и самому все тестить - вводить даные - валидные
    # невалидные
    user_params = { name:  "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar" }
     
    assert_no_difference 'User.count' do
    	post users_path, params: { user: user_params }
    end
    assert_template 'users/new'
  end
  

  test "valid signup information" do
  	get signup_path
  	user_params = { name:  "Example User",
					email: "user@example.com",
					password: "password",
                    password_confirmation: "password" }
  	assert_difference 'User.count', 1  do
  		post users_path,params: {user: user_params}
  		follow_redirect!
  	end
  	assert_template 'users/show'
  end
end
