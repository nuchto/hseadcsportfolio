require "application_system_test_case"

class ProjectbehancesTest < ApplicationSystemTestCase
  setup do
    @projectbehance = projectbehances(:one)
  end

  test "visiting the index" do
    visit projectbehances_url
    assert_selector "h1", text: "Projectbehances"
  end

  test "creating a Projectbehance" do
    visit projectbehances_url
    click_on "New Projectbehance"

    fill_in "Group", with: @projectbehance.group_id
    fill_in "Level", with: @projectbehance.level
    fill_in "Name", with: @projectbehance.name
    click_on "Create Projectbehance"

    assert_text "Projectbehance was successfully created"
    click_on "Back"
  end

  test "updating a Projectbehance" do
    visit projectbehances_url
    click_on "Edit", match: :first

    fill_in "Group", with: @projectbehance.group_id
    fill_in "Level", with: @projectbehance.level
    fill_in "Name", with: @projectbehance.name
    click_on "Update Projectbehance"

    assert_text "Projectbehance was successfully updated"
    click_on "Back"
  end

  test "destroying a Projectbehance" do
    visit projectbehances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projectbehance was successfully destroyed"
  end
end
