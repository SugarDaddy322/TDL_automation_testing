# Initializes all page objects
class Pages

  attr_accessor :registration_page

  def initialize
    @registration_page = RegistrationPage.new

  end

end