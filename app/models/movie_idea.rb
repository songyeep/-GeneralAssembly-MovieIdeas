class MovieIdea < ActiveRecord::Base

  belongs_to :user
  acts_as_votable

  validates_presence_of :synopsis, :more_info, :user_id
  validates_uniqueness_of :synopsis, :more_info

end

