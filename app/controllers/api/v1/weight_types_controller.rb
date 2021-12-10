class Api::V1::WeightTypesController < ApplicationController
  private

  def permit_params
    params.require(:weight_type).permit(:name)
  end
end
