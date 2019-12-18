require "application_system_test_case"

class CustodiansTest < ApplicationSystemTestCase
  setup do
    @custodian = custodians(:one)
  end

  test "visiting the index" do
    visit custodians_url
    assert_selector "h1", text: "Custodians"
  end

  test "creating a Custodian" do
    visit custodians_url
    click_on "New Custodian"

    fill_in "Child", with: @custodian.child_id
    fill_in "Custodian name", with: @custodian.custodian_name
    fill_in "Custodian order", with: @custodian.custodian_order
    click_on "Create Custodian"

    assert_text "Custodian was successfully created"
    click_on "Back"
  end

  test "updating a Custodian" do
    visit custodians_url
    click_on "Edit", match: :first

    fill_in "Child", with: @custodian.child_id
    fill_in "Custodian name", with: @custodian.custodian_name
    fill_in "Custodian order", with: @custodian.custodian_order
    click_on "Update Custodian"

    assert_text "Custodian was successfully updated"
    click_on "Back"
  end

  test "destroying a Custodian" do
    visit custodians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custodian was successfully destroyed"
  end
end
