class Post < ApplicationRecord
		validates :author, :presence => true
    validates :tag, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 5 }
    has_many :comments, :dependent => :destroy
end
