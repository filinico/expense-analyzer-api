class Api::V1::ReceiptsController < ApplicationController
  private

  def permit_params
    params.require(:receipt).permit(:sum, :date)
  end
end
