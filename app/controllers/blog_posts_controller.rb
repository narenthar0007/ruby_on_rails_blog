class BlogPostsController < ApplicationController
    before_action :authenticate_user! ,except: [:index ,:show, :home, :treanding, :search, :my_blog]
    BLOG_PER_PAGE = 4
    def index
        @b=params[:category]
        if @b
            @blog_posts = BlogPost.where(category: "#{@b}")  
        else
            @blog_posts = BlogPost.all           
        end
        @a=params[:order]
        if @a.to_i==1
            @blog_posts=BlogPost.order(created_at: :desc)
        elsif @a.to_i==2
            @blog_posts=BlogPost.order(:created_at )
        elsif @a.to_i==3
            @blog_posts=BlogPost.order(:title )
        elsif @a.to_i==4
            puts "Entered 4"
            @blog_posts=BlogPost.order(title: :desc)
        else
            @blog_posts.all
        end
    end
    def show 
        @blog_post = BlogPost.find(params[:id])
        @blog_post.update(upvote: @blog_post.upvote + 1)
    rescue ActiveRecord::RecordNotFound
        redirect_to  root_path
    end
    def new
        @blog_post = BlogPost.new
        @a = params[:id]
    end
    def create
        @blog_post = BlogPost.new(funn)
        if @blog_post.save
            redirect_to root_path
        else
            render :new , status: :unprocessable_entity
        end
    end
    def edit
        @blog_post = BlogPost.find(params[:id])
    end
    def update
        @blog_post = BlogPost.find(params[:id])
        if @blog_post.update(funn)
            redirect_to @blog_post
        else
            render :edit , status: :unprocessable_entity
        end
    end
    def destroy
        @blog_post = BlogPost.find(params[:id])
        @blog_post.destroy
        redirect_to root_path
    end
    def treanding
        @blog_posts = BlogPost.limit(5).order(upvote: :desc)
    end
    # def likee
    #     if  current_user.id
    #         @l = likes.create(current_user.id)
    #     end
    #     @cu = likes.count 

    # end
    def upvote
        @blog_post = BlogPost.find(params[:id])
        @blog_post.update(upvote: @blog_post.upvote + 1)
        redirect_to upvote_home_path
    end
    def view
        @blog_post = BlogPost.find(params[:id])
        @blog_post.update(view: @blog_post.view + 1)
        redirect_to  edit_blog_post_path
    end
    def search
        @blog_post = BlogPost.where("blog_posts.title LIKE ?","%"+params[:q]+"%")           
    end
    def home 
        @a= BlogPost.count
        @page = params.fetch(:page ,0).to_i
        @blog_posts = BlogPost.offset(@page*BLOG_PER_PAGE).limit(BLOG_PER_PAGE)
    end
    def my_blog
        @blog_post =BlogPost.where(user_id: current_user.id)
        
    end
    def liked_blog 
        @blog_post =BlogPost.where(user_id: current_user.id )
        @m = Lik.select(:blog_post_id).where(user_id: current_user.id )
        @l = BlogPost.where(id: @m) 
    end




    private
    def funn
        params.require(:blog_post).permit(:title,:body,:id,:user_id,:category)
    end
    def authenticate_user
        redirect_to new_user_session_path, alert: "you should be signed in" unless  user_signed_in?  
    end
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    
    
end