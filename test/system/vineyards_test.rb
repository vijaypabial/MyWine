require "application_system_test_case"

class VineyardsTest < ApplicationSystemTestCase
  setup do
    @vineyard = vineyards(:one)
  end

  test "visiting the index" do
    visit vineyards_url
    assert_selector "h1", text: "Vineyards"
  end

  test "creating a Vineyard" do
    visit vineyards_url
    click_on "New Vineyard"

    fill_in "About", with: @vineyard.about
    fill_in "Main image", with: @vineyard.main_image
    fill_in "Title", with: @vineyard.title
    click_on "Create Vineyard"

    assert_text "Vineyard was successfully created"
    click_on "Back"
  end

  test "updating a Vineyard" do
    visit vineyards_url
    click_on "Edit", match: :first

    fill_in "About", with: @vineyard.about
    fill_in "Main image", with: @vineyard.main_image
    fill_in "Title", with: @vineyard.title
    click_on "Update Vineyard"

    assert_text "Vineyard was successfully updated"
    click_on "Back"
  end

  test "destroying a Vineyard" do
    visit vineyards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vineyard was successfully destroyed"
  end
end
