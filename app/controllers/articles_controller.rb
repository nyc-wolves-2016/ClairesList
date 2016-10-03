class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def article_params
      params.require(:article).permit(:title, :description, :price, :category_id, :user_id)
    end
end
