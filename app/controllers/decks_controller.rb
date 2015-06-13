class DecksController < ApplicationController

def index
  @decks = Deck.all
end

def new
  #create a new deck and then transfers to the new.html.erb view
  @deck = Deck.new
end

def show
  @deck = Deck.find(params[:id])
end

def create
  @deck = Deck.new(deck_params)

  if @deck.save
    redirect_to @deck
  else
    render 'new'
  end
end

def edit
end

def destroy
  @deck = Deck.find(params[:id])
  @deck.destroy

  redirect_to decks_path
end

private
  def deck_params
    params.require(:deck).permit(:name, :desc)
  end

end
