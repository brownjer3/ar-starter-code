class Task < ActiveRecord::Base
    belongs_to :creator, class_name: "User"
    belongs_to :worker, class_name: "User"
    belongs_to :category
end