class LevelsController < ApplicationController
  before_action :set_level, only: [:show]
  before_action :set_point_session, only: [:show]
  # GET /levels
  # GET /levels.json
  def index
    @levels = Level.all
  end

  # GET /levels/1
  # GET /levels/1.json
  def show; end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_level
    @level = Level.find(params[:id])
  end

  def set_point_session
    session[:point] = 0
  end
end
