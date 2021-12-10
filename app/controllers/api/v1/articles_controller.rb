class Api::V1::ArticlesController < ApplicationController
  private

  def permit_params
    params.require(:article).permit(:price, :quantity, :weight)
  end
end
