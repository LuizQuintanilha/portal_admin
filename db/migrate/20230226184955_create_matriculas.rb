class CreateMatriculas < ActiveRecord::Migration[7.0]
  def change
    create_table :matriculas do |t|
      t.string :matricula
      t.string :curso
      t.string :tipo_curso
      t.string :modalidade
      t.string :turno
      t.string :periodo
      t.date :data_matricula

      t.timestamps
    end
  end
end
