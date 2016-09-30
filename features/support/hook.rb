Before do
 @b = Watir::Browser.new :firefox
end

After do
  @b.quit
end