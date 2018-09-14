class EventPiecesController < ApplicationController
  def index
    event_pieces = EventPiece.all
    render json: event_pieces
  end

  def show
    event_piece = EventPiece.find(params[:id])
    render json: event_piece
  end
end
