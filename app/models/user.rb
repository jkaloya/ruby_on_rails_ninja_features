class User < ActiveRecord::Base
    validates :ninja_name, :ninja_description, presence: true, length: { minimum: 2 }
end
