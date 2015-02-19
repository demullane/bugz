class QuotesController < ApplicationController
  before_action :current_user
  before_action :authorize

  def index
    @quotes = Quote.all
  end


end
