class Api::V1::ProductsController < ApplicationController
  private

  def permit_params
    params.require(:product).permit(:name)
  end
end
