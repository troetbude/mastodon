# frozen_string_literal: true

class AddDisabledToUsers < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def up
    safety_assured { add_column :users, :disabled, :bool, default: false, null: false }
  end

  def down
    remove_column :users, :disabled
  end
end
