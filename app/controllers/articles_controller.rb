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
      redirect_to articles_path
    else
      flash.now[:danger] = "article did Not created"
      logger.debug @article.errors.full_messages
      render "articles/new" , status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "article edited!"
      redirect_to articles_path
    else
      flash.now[:danger] = "article did Not edited"
      render "articles/edit", status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:success] = "article deleted!"
    redirect_to articles_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :tag, :author, :content)
  end
end
