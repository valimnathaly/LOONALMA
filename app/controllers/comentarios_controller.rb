class ComentariosController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comentarios.create(comentario_params)
        redirect_to article_path(@article)
    end

    private
        def comentario_params
            params.require(:comentario).permit(:nome, :comentario)
        end
end
