class Topic < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
   has_many :bookmarks
=======
    has_many :bookmarks
>>>>>>> receive-incoming-emails
end
