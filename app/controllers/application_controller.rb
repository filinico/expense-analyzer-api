class ApplicationController < ActionController::API
  before_action :load_instance, only: [:show, :update, :destroy]

  # GET /resources
  def index
    @objects = model_class.all
    render json: @objects
  end

  # GET /resources/:id
  def show
    if @object
      render json: @object
    else
      render json: @object.errors
    end
  end

  # POST /resources
  def create
    @object = model_class.create(permit_params)

    if @object.save
      render json: @object
    else
      render json: @object.errors
    end
  end

  # PUT /resources/1
  def update
    if @object.update(permit_params)
      render json: @object
    else
      render json: @object.errors
    end
  end

  # DELETE  /resources/1
  def destroy
    if @object.destroy
      render json: { notice: "The #{controller_name.classify} was successfully removed." }
    else
      render json: @object.errors
    end
  end

  private

  def model_class
    controller_name.classify.constantize
  end

  def load_instance
    @object = model_class.find(params[:id])
  end

  def permit_params
    #params.require(controller_name.classify.underscore.to_sym).permit!
  end
end
