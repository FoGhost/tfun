class TextPost < Post
  field :content
  validates_presence_of :content
end
