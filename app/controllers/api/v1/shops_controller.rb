class Api::V1::ShopsController < ApplicationController
  private

  def permit_params
    params.require(:shop).permit(:name)
  end
end
