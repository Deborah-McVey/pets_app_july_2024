require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  setup do
    @pet = pets(:one)
  end

  test "visiting the index" do
    visit pets_url
    assert_selector "h1", text: "Pets"
  end

  test "should create pet" do
    visit pets_url
    click_on "New pet"

    fill_in "Animal", with: @pet.animal
    fill_in "Birth date", with: @pet.birth_date
    fill_in "Color", with: @pet.color
    fill_in "Name", with: @pet.name
    fill_in "Size", with: @pet.size
    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "should update Pet" do
    visit pet_url(@pet)
    click_on "Edit this pet", match: :first

    fill_in "Animal", with: @pet.animal
    fill_in "Birth date", with: @pet.birth_date
    fill_in "Color", with: @pet.color
    fill_in "Name", with: @pet.name
    fill_in "Size", with: @pet.size
    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "should destroy Pet" do
    visit pet_url(@pet)
    click_on "Destroy this pet", match: :first

    assert_text "Pet was successfully destroyed"
  end
end
