class ContentidSerializer
  include JSONAPI::Serializer
  set_id :id
  set_type :content
  attributes :id, :content_title, :publishing_user
end
