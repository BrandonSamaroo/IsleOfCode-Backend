class UserSerializer
  include JSONAPI::Serializer
  set_type :user  
  attributes :id , :email, :name, :isCompany, :created_at, :updated_at
  has_many :content

end
