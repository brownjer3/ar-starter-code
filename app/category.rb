class Category < ActiveRecord::Base
    has_many :tasks
    has_many :workers, through: :tasks
    belongs_to :user
end