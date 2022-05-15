class ArticlesController < ApplicationController
    before_action :set_article, only: [:show,:edit,:update,:destroy]
    def new
        @article = Article.new
    end
    def index
        @articles = Article.all
    end
    def show
        
    end
     
   
    def create
        @article = Article.new(article_params)
 
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def edit
        
    end

    def update
        

        if @article.update(article_params)
            redirect_to @article
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        
        @article.destroy
    
        redirect_to root_path, status: :see_other
    end
    private
        def article_params
        params.require(:article).permit(:title, :text, :status)
        end
    def set_article 
        @article = Article.find(params[:id])
    end

end