class AddFullNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string

    User.all.each do |user|
      user.update_attribute :full_name, "#{user.first_name} #{user.last_name}"
    end
  end
end
