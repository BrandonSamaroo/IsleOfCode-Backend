class UserSerializer
  include JSONAPI::Serializer
  set_type :user  
  attributes :email, :name, :isCompany
  has_many :content

end
