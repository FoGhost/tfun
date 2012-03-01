class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  attr_accessor :user

  field :content
  field :type
  field :user_id

  validates_presence_of :content
  def user
    @user ||= User.find(:id => user_id)
  end
end
