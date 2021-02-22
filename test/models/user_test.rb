require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @subject = User.new
  end
  test "email should be required" do
    @subject.valid?
    assert_includes(@subject.errors[:email], "can’t be blank")
  end

  test "email should be a valid email" do
    @subject.email = "invalid"
    @subject.valid?

    assert_includes(@subject.errors[:email], "is not an email")
  end

  test "should confirm the user" do
    user = create(:user)
    assert_not(user.confirmed?)
    user.confirm!
    assert(user.confirmed?)
  end
end
