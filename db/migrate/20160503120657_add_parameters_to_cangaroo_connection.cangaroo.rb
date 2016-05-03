# This migration comes from cangaroo (originally 20151030140821)
class AddParametersToCangarooConnection < ActiveRecord::Migration
  def change
    add_column :cangaroo_connections, :parameters, :text, default: {}
  end
end
