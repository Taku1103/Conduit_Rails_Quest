require "test_helper"

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new(title:"test_title", author: "testman_yoshi", tag: "exam_tag", content: "unko_buriburi")
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


end
