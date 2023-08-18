class NarensController < ApplicationController
    def create
        @blog_post = BlogPost.find(params[:blog_post_id])
        @naren = @blog_post.narens.create(params[:naren].permit(:body,:user_id))
        redirect_to blog_post_path(@blog_post)
    end
    def destroy
        @blog_post = BlogPost.find(params[:blog_post_id])
        @naren = @blog_post.narens.find(params[:id])
        @naren.destroy
        redirect_to blog_post_path(@blog_post)
    end
end
