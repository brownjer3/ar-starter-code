class User < ActiveRecord::Base
    has_many :created_tasks, class_name: "Task", foreign_key: "creator_id"
    has_many :to_do_tasks, class_name: "Task", foreign_key: "worker_id"
    has_many :workers, through: :created_tasks
    has_many :categories
    has_many :to_do_categories, through: :to_do_tasks, source: :category
end