class ContentSerializer
  include JSONAPI::Serializer
  set_type :content
  attributes :id, :title, :description, :created_at, :updated_at
  belongs_to :user
end
