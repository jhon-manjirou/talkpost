class TalkpostsController < ApplicationController
    def show
        @talkposts = Talkpost.all
        @talkposts = Talkpost.page(params[:page]).per(5)
        @talkpost = Talkpost.new
    end

    def create
        @talkpost = Talkpost.new(talkpost_params)
        if @talkpost.save
            flash[:success] = "Talkpost created!"
            redirect_to root_url
        else
            flash[:danger] = "Failed!"
            redirect_to root_url
        end
    end

    private
        def talkpost_params
            params.require(:talkpost).permit(:content)
        end
end
