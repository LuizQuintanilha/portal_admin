class Matricula < ApplicationRecord
    validates :matricula, presence: true
    validates :curso, presence: true
    validates :tipo_curso, presence: true
    validates :modalidade, presence: true
    validates :periodo, presence: true
    validates :data_matricula, presence: true
    validates :turno, presence: true
end
