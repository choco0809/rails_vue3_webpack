class CreateDiscordBots < ActiveRecord::Migration[7.0]
  def change
    create_table :discord_bots do |t|

      t.timestamps
    end
  end
end
