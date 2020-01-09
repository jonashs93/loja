class ProdutosController < ApplicationController

  inherit_resources

  actions :all, except: :show

  private

  def produto_params
    params.require(:produto).permit(:nome, :descricao, produtos_cores_attributes: [
                                      :id, :cor_id, :_destroy, produtos_cores_tamanhos_attributes: [
                                        :id, :tamanho_id, :quantidade, :_destroy]
                                    ])
  end
end
