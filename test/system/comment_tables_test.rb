require "application_system_test_case"

class CommentTablesTest < ApplicationSystemTestCase
  setup do
    @comment_table = comment_tables(:one)
  end

  test "visiting the index" do
    visit comment_tables_url
    assert_selector "h1", text: "Comment tables"
  end

  test "should create comment table" do
    visit comment_tables_url
    click_on "New comment table"

    fill_in "Body", with: @comment_table.body
    fill_in "Parent", with: @comment_table.parent_id
    fill_in "Post", with: @comment_table.post_id
    click_on "Create Comment table"

    assert_text "Comment table was successfully created"
    click_on "Back"
  end

  test "should update Comment table" do
    visit comment_table_url(@comment_table)
    click_on "Edit this comment table", match: :first

    fill_in "Body", with: @comment_table.body
    fill_in "Parent", with: @comment_table.parent_id
    fill_in "Post", with: @comment_table.post_id
    click_on "Update Comment table"

    assert_text "Comment table was successfully updated"
    click_on "Back"
  end

  test "should destroy Comment table" do
    visit comment_table_url(@comment_table)
    click_on "Destroy this comment table", match: :first

    assert_text "Comment table was successfully destroyed"
  end
end
