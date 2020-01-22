class Api::V1::NotesController < ApplicationController

  def create
    @note = Note.create!(note_params)
    render json: @note, status: 202
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    render json: @note, status: 202
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    render json: @note, status: 200
  end

  private

  def note_params
    params.require(:note).permit(:title, :weekday, :month, :day, :age, :year, :details, :character_id)
  end
end
