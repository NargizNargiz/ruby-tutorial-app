class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    # метод принимает на вход блок с переменной t (таблица) 
    create_table :users do |t|
      t.string :name
      t.string :email
      # создаются доп столбцы creted_at udpated_at
      t.timestamps
    end
  end
end
