class ComentariosController < ApplicationController
    http_basic_authenticate_with name: 'nat', password: 'natola', only: :destroy
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comentarios.create(comentario_params)
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comentarios.find(params[:id])
        @comment.destroy
    
        redirect_to article_path(@article), status: 303
      end
    

    private
        def comentario_params
            params.require(:comentario).permit(:nome, :comentario, :status)
        end
end
