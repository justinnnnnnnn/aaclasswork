class User < ApplicationRecord
  has_many :enrollments,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Enrollment
end
