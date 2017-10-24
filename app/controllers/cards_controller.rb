class CardsController < ApplicationController
  before_action :load_card, except: :index

  def index
    @cards = Card.all
  end

  def new
  end

  def create
    if @card.update(card_params)
      redirect_to cards_path, notice: 'Card created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to cards_path, notice: 'Card update!'
    else
      render :edit
    end
  end

  def destroy
    if @card.destroy
      redirect_to cards_path, notice: 'Card deleted!'
    else
      render :new
    end
  end

  private

  def load_card
    if params[:id]
      @card = Card.find(params[:id])
    else
      @card = Card.new(status: 'draft')
    end
  end

  def card_params
    params.require(:card).permit!
  end
end
