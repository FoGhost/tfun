class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  attr_accessor :user
  field :user_id

  def user
    @user ||= User.find(:id => user_id)
  end
end
