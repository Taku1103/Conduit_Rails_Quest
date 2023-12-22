class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
    flash[:success] = "article created!"
    # redirect_to index_path
    else

    end
  end

  def edit
  end

  def update
  end

  def delete
  end


  private

  def article_params
    params.require(:article).permit(:title, :tag, :author, :content)
  end
end
