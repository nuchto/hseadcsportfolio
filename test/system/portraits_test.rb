require "application_system_test_case"

class PortraitsTest < ApplicationSystemTestCase
  setup do
    @portrait = portraits(:one)
  end

  test "visiting the index" do
    visit portraits_url
    assert_selector "h1", text: "Portraits"
  end

  test "creating a Portrait" do
    visit portraits_url
    click_on "New Portrait"

    fill_in "Image", with: @portrait.image
    fill_in "Level", with: @portrait.level
    fill_in "Person", with: @portrait.person_id
    click_on "Create Portrait"

    assert_text "Portrait was successfully created"
    click_on "Back"
  end

  test "updating a Portrait" do
    visit portraits_url
    click_on "Edit", match: :first

    fill_in "Image", with: @portrait.image
    fill_in "Level", with: @portrait.level
    fill_in "Person", with: @portrait.person_id
    click_on "Update Portrait"

    assert_text "Portrait was successfully updated"
    click_on "Back"
  end

  test "destroying a Portrait" do
    visit portraits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portrait was successfully destroyed"
  end
end
