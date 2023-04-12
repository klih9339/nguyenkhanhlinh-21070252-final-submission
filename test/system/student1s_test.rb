require "application_system_test_case"

class Student1sTest < ApplicationSystemTestCase
  setup do
    @student1 = student1s(:one)
  end

  test "visiting the index" do
    visit student1s_url
    assert_selector "h1", text: "Student1s"
  end

  test "should create student1" do
    visit student1s_url
    click_on "New student1"

    fill_in "Address", with: @student1.address
    fill_in "Mobile", with: @student1.mobile
    fill_in "Mssv", with: @student1.mssv
    fill_in "Name stu", with: @student1.name_stu
    click_on "Create Student1"

    assert_text "Student1 was successfully created"
    click_on "Back"
  end

  test "should update Student1" do
    visit student1_url(@student1)
    click_on "Edit this student1", match: :first

    fill_in "Address", with: @student1.address
    fill_in "Mobile", with: @student1.mobile
    fill_in "Mssv", with: @student1.mssv
    fill_in "Name stu", with: @student1.name_stu
    click_on "Update Student1"

    assert_text "Student1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Student1" do
    visit student1_url(@student1)
    click_on "Destroy this student1", match: :first

    assert_text "Student1 was successfully destroyed"
  end
end
