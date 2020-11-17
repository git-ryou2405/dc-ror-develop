require "rails_helper"

RSpec.describe "user_balances/show", type: :view do
  before do
    @user_balance = assign(:user_balance, UserBalance.create!(
                                            balance: 2,
                                            user_id: 3,
                                            last_calculated_jounal_id: 4,
                                          ))
  end

  it "renders attributes in <p>" do
    render
    aggregate_failures "testing items" do
      expect(rendered).to match(/2/)
      expect(rendered).to match(/3/)
      expect(rendered).to match(/4/)
    end
  end
end
