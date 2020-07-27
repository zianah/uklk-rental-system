class Review < ApplicationRecord
  belongs_to :user
  belongs_to :rental

  validates :user_id, :uniqueness => { :scope => :rental_id,
    :message => "Users may only write one review." }

  validates_presence_of :score, :message
end
