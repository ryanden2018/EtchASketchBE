class Api::V1::SketchesController < ApplicationController
  def index
    @sketches = Sketch.all
    render json: @sketches
  end

  def show
    @sketch = Sketch.find(params[:id])
    render json: @sketch
  end
end
