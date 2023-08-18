require "test_helper"

class CommentTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_table = comment_tables(:one)
  end

  test "should get index" do
    get comment_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_table_url
    assert_response :success
  end

  test "should create comment_table" do
    assert_difference("CommentTable.count") do
      post comment_tables_url, params: { comment_table: { body: @comment_table.body, parent_id: @comment_table.parent_id, post_id: @comment_table.post_id } }
    end

    assert_redirected_to comment_table_url(CommentTable.last)
  end

  test "should show comment_table" do
    get comment_table_url(@comment_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_table_url(@comment_table)
    assert_response :success
  end

  test "should update comment_table" do
    patch comment_table_url(@comment_table), params: { comment_table: { body: @comment_table.body, parent_id: @comment_table.parent_id, post_id: @comment_table.post_id } }
    assert_redirected_to comment_table_url(@comment_table)
  end

  test "should destroy comment_table" do
    assert_difference("CommentTable.count", -1) do
      delete comment_table_url(@comment_table)
    end

    assert_redirected_to comment_tables_url
  end
end
