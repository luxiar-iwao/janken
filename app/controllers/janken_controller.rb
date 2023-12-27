class JankenController < ApplicationController
  def select
  end

  def result
    @hand = params[:hand]
    @computer_hand = ["グー", "チョキ", "パー"].sample
    if @hand == @computer_hand
      @result = "あいこです。"
    elsif @hand == "グー" && @computer_hand == "チョキ" || @hand == "チョキ" && @computer_hand == "パー" || @hand == "パー" && @computer_hand == "グー"
      @result = "あなたの勝ちです。"
    else
      @result = "あなたの負けです。"
    end
  end

  def history
  end
end
