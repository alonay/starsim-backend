class HotKeysController < ApplicationController
  before_action :set_hot_key, only: [:show, :update, :destroy]

  # GET /hot_keys
  def index
    @hot_keys = HotKey.all

    render json: @hot_keys
  end

  # GET /hot_keys/1
  def show
    render json: @hot_key
  end

  # POST /hot_keys
  def create
    @hot_key = HotKey.new(hot_key_params)

    if @hot_key.save
      render json: @hot_key, status: :created, location: @hot_key
    else
      render json: @hot_key.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hot_keys/1
  def update
    if @hot_key.update(hot_key_params)
      render json: @hot_key
    else
      render json: @hot_key.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hot_keys/1
  def destroy
    @hot_key.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hot_key
      @hot_key = HotKey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hot_key_params
      params.require(:hot_key).permit(:profile_id, :keys)
    end
end
