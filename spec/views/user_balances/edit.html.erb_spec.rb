require "rails_helper"

RSpec.describe "user_balances/edit", type: :view do
  before do
    @user_balance = assign(:user_balance, UserBalance.create!(
                                            balance: 1,
                                            user_id: 1,
                                            last_calculated_jounal_id: 1,
                                          ))
  end

  it "renders the edit user_balance form" do
    render

    assert_select "form[action=?][method=?]", user_balance_path(@user_balance), "post" do
      assert_select "input[name=?]", "user_balance[balance]"

      assert_select "input[name=?]", "user_balance[user_id]"

      assert_select "input[name=?]", "user_balance[last_calculated_jounal_id]"
    end
  end
end
