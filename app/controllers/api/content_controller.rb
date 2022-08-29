module Api
    class ContentController < ApplicationController
        def index
            content = Content.order('created_at DESC');
            json_string = ContentSerializer.new(content).serializable_hash.to_json
            render json: json_string
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