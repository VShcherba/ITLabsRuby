class MyErrorMessage < StandardError
attr_accessor :object, :message

  def initialize(object )
    super
    @object = object
    @message = 'is not found'
  end

  def explaine
    puts "#{@object}" +  " " +  "#{self.message}"
  end
end