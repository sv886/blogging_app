class Post < ActiveRecord::Base

  validates :title, :body, :post_id, presence: true

end
