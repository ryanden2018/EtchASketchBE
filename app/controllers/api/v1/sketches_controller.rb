class Api::V1::SketchesController < ApplicationController
  def index
    @sketches = all_sketches_without_data
    render json: @sketches.to_json
  end

  def show
    @sketch = Sketch.find(params[:id])
    render json: @sketch.to_json
  end

  def update
    @sketch = Sketch.find(params[:id])
    @sketch.update(sketch_params)
    if @sketch.save
      render json: @sketch, status: :accepted
    else
      render json: {errors: @sketch.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def create
    @sketch = Sketch.new(sketch_params)
    if @sketch.save
      render json: @sketch, status: :accepted
    else
      render json: {errors: @sketch.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    @sketch = Sketch.find(params[:id])
    @sketch.destroy
    @sketches = all_sketches_without_data
    render json: @sketches.to_json
  end

  private

  def sketch_params
    params.permit(:user_id,:width,:height,:data,:pointerX,:pointerY)
  end

  def all_sketches_without_data
    return Sketch.select(:id,:user_id,:width,:height,:pointerX,:pointerY,:created_at,:updated_at)
  end
end
