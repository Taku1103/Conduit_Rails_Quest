require "test_helper"

class ArticleTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @article = @user.articles.build(user_id: @user.id, title:"test_title", author: "testman_yoshi", tag: "exam_tag", content: "unko_buriburi")
  end

  test "article should be valid" do
    assert @article.valid?
  end

  test "title should be present" do
    @article.title = ""
    assert_not @article.valid?
  end

  test "author should be present" do
    @article.author = ""
    assert_not @article.valid?
  end

  test "content should be present" do
    @article.content = ""
    assert_not @article.valid?
  end

  test "title should not be too long" do
    @article.title = "a" * 101
    assert_not @article.valid?
  end

  test "content should not be too long" do
    @article.content = "a" * 2001
    assert_not @article.valid?
  end

  test "author should not be too long" do
    @article.author = "a" * 51
    assert_not @article.valid?
  end

  test "order should be most recent first" do
    assert_equal articles(:most_recent), Article.first
  end
end
