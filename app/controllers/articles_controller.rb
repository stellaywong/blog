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
            redirect_to @article
        else
            render 'new'        # gives @article object back to new, instead of sending a new request
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        # binding.pry
        redirect_to articles_path   #why a path now?
    end

    private
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
