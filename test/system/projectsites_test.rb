require "application_system_test_case"

class ProjectsitesTest < ApplicationSystemTestCase
  setup do
    @projectsite = projectsites(:one)
  end

  test "visiting the index" do
    visit projectsites_url
    assert_selector "h1", text: "Projectsites"
  end

  test "creating a Projectsite" do
    visit projectsites_url
    click_on "New Projectsite"

    fill_in "Group", with: @projectsite.group_id
    fill_in "Level", with: @projectsite.level
    fill_in "Name", with: @projectsite.name
    click_on "Create Projectsite"

    assert_text "Projectsite was successfully created"
    click_on "Back"
  end

  test "updating a Projectsite" do
    visit projectsites_url
    click_on "Edit", match: :first

    fill_in "Group", with: @projectsite.group_id
    fill_in "Level", with: @projectsite.level
    fill_in "Name", with: @projectsite.name
    click_on "Update Projectsite"

    assert_text "Projectsite was successfully updated"
    click_on "Back"
  end

  test "destroying a Projectsite" do
    visit projectsites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projectsite was successfully destroyed"
  end
end
