class ArticlesController < ApplicationController
    def new
        @article = Article.new

        binding.pry
    end
    def create
        @article = Article.new(article_params)

        @article.save
    end

    private
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
