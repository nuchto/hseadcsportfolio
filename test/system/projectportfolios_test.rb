require "application_system_test_case"

class ProjectportfoliosTest < ApplicationSystemTestCase
  setup do
    @projectportfolio = projectportfolios(:one)
  end

  test "visiting the index" do
    visit projectportfolios_url
    assert_selector "h1", text: "Projectportfolios"
  end

  test "creating a Projectportfolio" do
    visit projectportfolios_url
    click_on "New Projectportfolio"

    fill_in "Group", with: @projectportfolio.group_id
    fill_in "Level", with: @projectportfolio.level
    fill_in "Name", with: @projectportfolio.name
    click_on "Create Projectportfolio"

    assert_text "Projectportfolio was successfully created"
    click_on "Back"
  end

  test "updating a Projectportfolio" do
    visit projectportfolios_url
    click_on "Edit", match: :first

    fill_in "Group", with: @projectportfolio.group_id
    fill_in "Level", with: @projectportfolio.level
    fill_in "Name", with: @projectportfolio.name
    click_on "Update Projectportfolio"

    assert_text "Projectportfolio was successfully updated"
    click_on "Back"
  end

  test "destroying a Projectportfolio" do
    visit projectportfolios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projectportfolio was successfully destroyed"
  end
end
