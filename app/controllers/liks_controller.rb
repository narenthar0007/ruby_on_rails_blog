class LiksController < ApplicationController
    def create
        @lik = current_user.liks.new(lik_pra)
        if !@lik.save
            flash[:notice] = @lik.errors.full_messages.to_sentence
        end
        redirect_to @lik.blog_post
    end
    def destroy
        @lik = Lik.find_by(blog_post_id: params[:id], user_id: current_user.id)
        if @lik.present?
            @lik.destroy
            redirect_to blog_post_path
        else
            redirect_to blog_post_path
        end
    end
    private 
    def lik_pra
        params.require(:lik).permit(:blog_post_id)
    end
end
