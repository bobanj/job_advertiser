require 'spec_helper'

describe "profiles/new.html.haml" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :user => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :street_name => "MyString",
      :postcode => "MyString",
      :country => "MyString",
      :mobile => "MyString",
      :gender => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_user", :name => "profile[user]"
      assert_select "input#profile_first_name", :name => "profile[first_name]"
      assert_select "input#profile_last_name", :name => "profile[last_name]"
      assert_select "input#profile_street_name", :name => "profile[street_name]"
      assert_select "input#profile_postcode", :name => "profile[postcode]"
      assert_select "input#profile_country", :name => "profile[country]"
      assert_select "input#profile_mobile", :name => "profile[mobile]"
      assert_select "input#profile_gender", :name => "profile[gender]"
    end
  end
end
