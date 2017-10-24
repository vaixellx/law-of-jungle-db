class PagesController < ApplicationController
  def index
    @cards = Card.order(created_at: :desc).last(6)
  end

  def rule
  end
end
