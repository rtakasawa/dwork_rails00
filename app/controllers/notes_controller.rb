class NotesController < ApplicationController
  def index
  end
  def new
    @note = Note.new
  end
  def create
    Note.create(note_params)
    redirect_to new_note_path
  end
  private
  def note_params
    params.require(:note).permit(:content)
  end
end
