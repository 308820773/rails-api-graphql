module Types
  class UserType < Types::BaseObject
    graphql_name 'User'
    description '用户'

    field :id, ID, null: false
    field :email, String, null: false
    field :nickname, String, null: false
    field :token, String, null: false
  end
end