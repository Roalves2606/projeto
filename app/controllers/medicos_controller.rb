class MedicosController < ApplicationController
    def index
      @medicos = Medico.all
      @medico = Medico.new
    end

    def new
    end
  
    def create
      @medico = Medico.new(params.require(:medico).permit(:first_name, :last_name, :age, :cpf, :salary))
      @medico.save 
    end
end
