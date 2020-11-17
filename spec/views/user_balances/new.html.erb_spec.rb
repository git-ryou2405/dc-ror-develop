require "rails_helper"

RSpec.describe "user_balances/new", type: :view do
  before do
    assign(:user_balance, UserBalance.new(
                            balance: 1,
                            user_id: 1,
                            last_calculated_jounal_id: 1,
                          ))
  end

  it "renders new user_balance form" do
    render

    assert_select "form[action=?][method=?]", user_balances_path, "post" do
      assert_select "input[name=?]", "user_balance[balance]"

      assert_select "input[name=?]", "user_balance[user_id]"

      assert_select "input[name=?]", "user_balance[last_calculated_jounal_id]"
    end
  end
end
