class Stream < ActiveRecord::Base

has_many :lectures

belongs_to :course

end
