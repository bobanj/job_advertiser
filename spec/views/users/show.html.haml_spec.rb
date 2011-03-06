require 'spec_helper'

describe "users/show.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "First Name",
      :last_name => "Last Name",
      :street_name => "Street Name",
      :postcode => "Postcode",
      :country => "Country",
      :mobile => "Mobile",
      :gender => "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Postcode/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mobile/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
  end
end
