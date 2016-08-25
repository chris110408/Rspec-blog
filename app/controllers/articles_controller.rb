class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  # POST /articles
  def create


    @article = Article.new(article_params)

    if @article.save
      flash[:success] = 'Article has been created'
      redirect_to articles_path
    else
      render :new
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.


  # Only allow a trusted parameter "white list" through.
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
