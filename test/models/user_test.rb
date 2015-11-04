# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  email                           :string           not null
#  first_name                      :string
#  second_name                     :string
#  first_surname                   :string
#  second_surname                  :string
#  type_document                   :integer
#  document                        :string
#  medical_record                  :string
#  rol_id                          :integer
#  crypted_password                :string
#  salt                            :string
#  created_at                      :datetime
#  updated_at                      :datetime
#  name                            :string
#  remember_me_token               :string
#  remember_me_token_expires_at    :datetime
#  reset_password_token            :string
#  reset_password_token_expires_at :datetime
#  reset_password_email_sent_at    :datetime
#  activation_state                :string
#  activation_token                :string
#  activation_token_expires_at     :datetime
#  picture                         :string
#  admin                           :boolean          default(FALSE)
#  failed_logins_count             :integer          default(0)
#  lock_expires_at                 :datetime
#  unlock_token                    :string
#  last_login_at                   :datetime
#  last_logout_at                  :datetime
#  last_activity_at                :datetime
#  last_login_from_ip_address      :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new( name: "Raul", email: "lala5@user.com", password: 'secret', password_confirmation: 'secret' )
  end

  test "user should be valid" do
    assert @user.valid?
  end
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 2
    assert_not @user.valid?
  end

end
