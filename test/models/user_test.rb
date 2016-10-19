require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
      @user = User.new(first_name: "Bob", last_name: "Bobson", email: "bob@bob.com", password: "password", password_confirmation: "password")
  end

end
