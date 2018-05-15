class ArticlesController < ApplicationController
  def index         # GET /articles
    @articles = Article.all
  end

  def show          # GET /articles/:id
    @article = Article.find(params[:id])
  end

  def new           # GET /articles/new
    @article = Article.new
  end

  def create        # POST /articles
    @article = Article.create(article_params)
    redirect_to article_path(@article)
  end

  def edit          # GET /articles/:id/edit
  end

  def update        # PATCH /articles/:id
  end

  def destroy       # DELETE /articles/:id
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
      params.require(:article).permit(:title, :content)
    end
end
