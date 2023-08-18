class AsController < ApplicationController
    
    def create
        @post = BlogPost.find(params[:post_id])
        @a =A.new(comment_params)
        
        
    end
    def destroy
        @post = BlogPost.find(params[:post_id])
        @a =@post.a.find(params[:id])
        @a.destroy

    end
    private
    def comment_params
        params.require(:a).permit(:body)
    end
    def funn
        params.require(:post).permit(:post_id)
    end
end
