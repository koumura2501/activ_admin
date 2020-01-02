class UserSearch
  include ActiveModel::Model

  attr_accessor :search_name, :search_age

  def execute
    User.ransack(name_eq: @search_name,age_eq: @search_age).result
  end
end
