require 'spec_helper'

describe "users/new.html.haml" do
  before(:each) do
    assign(:user, stub_model(User,
      :first_name => "MyString",
      :last_name => "MyString",
      :street_name => "MyString",
      :postcode => "MyString",
      :country => "MyString",
      :mobile => "MyString",
      :gender => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_street_name", :name => "user[street_name]"
      assert_select "input#user_postcode", :name => "user[postcode]"
      assert_select "input#user_country", :name => "user[country]"
      assert_select "input#user_mobile", :name => "user[mobile]"
      assert_select "input#user_gender", :name => "user[gender]"
    end
  end
end
