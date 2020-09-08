module Mutations
  class UserSignIn < BaseMutation
    field :user, Types::UserType, null: true

    def resolve(email:, passwd:)
      @user = User.find_by!(email: email)
      raise SignError, :passwd_error unless @user.authenticate(passwd)

      { user: @user }
    end
  end
end
