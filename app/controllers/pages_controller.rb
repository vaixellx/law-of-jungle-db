class PagesController < ApplicationController
  def index
    @cards = Card.order(created_at: :desc).first(6)
  end

  def rule
  end
end
