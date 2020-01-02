class CreateMicroposts < ActiveRecord::Migration[6.0]
  def change
    # データベースが作成されていないため、エラーとなります。
    # drop_table :microposts
    create_table :microposts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
  # migrateは余計なファイルがあるとエラーするため、ファイルを１つ削除しました。
end
