require "rails_helper"

RSpec.describe "user_balances/index", type: :view do
  before do
    assign(:user_balances, [
      UserBalance.create!(
        balance: 2,
        user_id: 3,
        last_calculated_jounal_id: 4,
      ),
      UserBalance.create!(
        balance: 2,
        user_id: 3,
        last_calculated_jounal_id: 4,
      ),
    ])
  end

  it "renders a list of user_balances" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
