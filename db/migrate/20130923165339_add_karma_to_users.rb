class AddKarmaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma, :integer

    User.all.each do |user|
      user.update_attribute :karma, user.total_karma
    end
  end
end
