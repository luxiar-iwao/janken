class JankenController < ApplicationController
  def select
  end

  def result
    @hand = params[:hand]
  end

  def history
  end
end
