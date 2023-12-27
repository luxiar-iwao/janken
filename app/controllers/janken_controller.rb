class JankenController < ApplicationController
  def select
  end

  def result
    @hand = params[:hand]
    @computer_hand = ["グー", "チョキ", "パー"].sample
    if @hand == @computer_hand
      @result_text = "あいこです。"
    elsif @hand == "グー" && @computer_hand == "チョキ" || @hand == "チョキ" && @computer_hand == "パー" || @hand == "パー" && @computer_hand == "グー"
      @result_text = "あなたの勝ちです。"
    else
      @result_text = "あなたの負けです。"
    end
    
    @result = Result.new
    @result.your_hand = @hand
    @result.computer_hand = @computer_hand
    @result.result = @result_text
    @result.save
  end

  def history
    @results = Result.all
  end
end
