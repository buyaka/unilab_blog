class ArticlesController < ApplicationController

	def new
		
	end
	
	def create
	  @article = Article.new()
	  @article.title = params[:article][:title]
	  @article.text = params[:article][:text]
	 
	  @article.save
	  redirect_to "/articles/list"
	end
	
	def list
		@articles = Article.all
	end
	
	def detail
		@article = Article.find(params[:id])
	end
	
  #2
  # this is search action
  def search
		@articles = Article.where("text = ?",params[:q])
    
    #Article.find_by_text(params[:q])
    
    #debug
    @articles.each do |article|
      puts article.title
    end
    
    
		#@articles = Article.where(:text => params[:q])  ' 1=1 -- '

		#@articles = Article.where("text = ?", params[:q] )
    
    
    #TODO
    # add filter for other fields
    # Article.where("text = ? and title = ?",params[:text],params[:title])
    
    # to add LIKE filter SQL : name like %aa%
    # "name LIKE ? OR postal_code like ?", "%#{search}%", "%#{search}%"
    
  end
  
end




