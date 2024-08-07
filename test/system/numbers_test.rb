require "application_system_test_case"

class NumbersTest < ApplicationSystemTestCase
  setup do
    @number = numbers(:one)
  end

  test "visiting the index" do
    visit numbers_url
    assert_selector "h1", text: "Numbers"
  end

  test "should create number" do
    visit numbers_url
    click_on "New number"

    fill_in "Name", with: @number.name
    fill_in "Phone1", with: @number.phone1
    fill_in "Phone2", with: @number.phone2
    fill_in "Phone3", with: @number.phone3
    click_on "Create Number"

    assert_text "Number was successfully created"
    click_on "Back"
  end

  test "should update Number" do
    visit number_url(@number)
    click_on "Edit this number", match: :first

    fill_in "Name", with: @number.name
    fill_in "Phone1", with: @number.phone1
    fill_in "Phone2", with: @number.phone2
    fill_in "Phone3", with: @number.phone3
    click_on "Update Number"

    assert_text "Number was successfully updated"
    click_on "Back"
  end

  test "should destroy Number" do
    visit number_url(@number)
    click_on "Destroy this number", match: :first

    assert_text "Number was successfully destroyed"
  end
end
