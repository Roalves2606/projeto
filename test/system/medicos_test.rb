require "application_system_test_case"

class MedicosTest < ApplicationSystemTestCase
  setup do
    @medico = medicos(:one)
  end

  test "visiting the index" do
    visit medicos_url
    assert_selector "h1", text: "Medicos"
  end

  test "creating a Medico" do
    visit medicos_url
    click_on "New Medico"

    fill_in "Age", with: @medico.age
    fill_in "Cpf", with: @medico.cpf
    fill_in "First name", with: @medico.first_name
    fill_in "Last name", with: @medico.last_name
    click_on "Create Medico"

    assert_text "Medico was successfully created"
    click_on "Back"
  end

  test "updating a Medico" do
    visit medicos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @medico.age
    fill_in "Cpf", with: @medico.cpf
    fill_in "First name", with: @medico.first_name
    fill_in "Last name", with: @medico.last_name
    click_on "Update Medico"

    assert_text "Medico was successfully updated"
    click_on "Back"
  end

  test "destroying a Medico" do
    visit medicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medico was successfully destroyed"
  end
end
