module Api
    class ContentController < ApplicationController
        def index
            content = Content.order('created_at DESC');
            render json: {status: 'SUCCESS', message: 'Loaded Contents', data:content}, status: :ok
        end

        def show
            content = Content.find(params[:id])
            user = User.find(content.user_id)
            data = {
                content_title: content.title,
                publishing_user: user.email
            }
            render json: {status: 'SUCCESS', message: 'Loaded Content', data:data}, status: :ok
        end
    end
end