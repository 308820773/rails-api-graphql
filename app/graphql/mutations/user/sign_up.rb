module Mutations
  module User
    class SignUp < BaseMutation
      null true

      field :user, Models::UserType, null: true

      def resolve(params, *_opts)
        @user = ::User.create!(params)
        { user: @user }
      end
    end
  end
end
