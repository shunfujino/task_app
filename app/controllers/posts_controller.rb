class PostsController < ApplicationController
    def index
        @posts = Post.all
      end
    
      def new
        @post = Post.new

      end
    
      def create
        @post = Post.new(title: params[:title],start_date: params[:start_date], end_date: params[:end_date], all_day: params[:all_day], memo: params[:memo])
        @post.save
        redirect_to("/")
      end
    
      def show
        @post = Post.find_by(id: params[:id])
      end
    
      def edit
        @post = Post.find_by(id: params[:id])
      end
    
      def update
        @post = Post.find_by(id: params[:id])
        @post.title = params[:title]
        @post.start_date = params[:start_date]
        @post.end_date = params[:end_date]
        @post.all_day = params[:all_day]
        @post.memo = params[:memo]
        @post.save
        redirect_to("/")

      end
    
      def destroy
        @post = Post.find_by(id: params[:id])
        @post.destroy
        redirect_to("/")
      end
end
