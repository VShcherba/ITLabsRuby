class Comment

  def initialize(text, username)
    @text = text
    @username = username
  end

  def to_s
    string = "#{@username}" + ": "+ "#{@text}"
  end
end