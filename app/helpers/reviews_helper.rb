module ReviewsHelper
  def labelize(button_label)
    string = ''
    button_label.to_i.times do
      string << '🥃'
    end
    string
  end
end
