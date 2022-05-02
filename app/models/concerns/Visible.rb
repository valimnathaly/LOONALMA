module Visible
    extend ActiveSupport::Concern

    VALID_STATUSES = ['publico', 'privado', 'arquivado']
    
    included do
        validates :status, inclusion: { in: VALID_STATUSES }
    end

    class_methods do
        def contador
            where(status: 'publico').count
        end
    end

    def arquivado?
        status == 'arquivado'
    end
end