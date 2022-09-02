module Api
    class ContentsController < ApplicationController
        def index
            content = Content.order('created_at DESC');
            puts content.inspect
            json_string = ContentSerializer.new(content).serializable_hash.to_json
            render json: json_string
        end

        def show
            content = Content.find(params[:id])
            user = User.find(content.user_id)
            data = OpenStruct.new(:id => content.id)
            data.content_title = content.title
            data.publishing_user = user.email
            json_string = ContentidSerializer.new(data).serializable_hash.to_json
            render json: json_string
        end
    end
end