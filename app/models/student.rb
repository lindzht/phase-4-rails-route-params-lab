class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  # def self.search_for_student(params)
  #   students = self.all.map do |student|
  #     if student.first_name == (params[:first_name]) || student.last_name == (params[:last_name])
  #       student
  #     else
  #       ""
  #     end
  #   end
  # end

end
