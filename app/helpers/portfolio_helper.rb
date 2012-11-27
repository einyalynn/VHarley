module PortfolioHelper
  class Utilities
  def getFileName(location)
    if location.respond_to? 'split'
      nameParts = location.split '/'
      return nameParts.pop
    end
  end
  end
end
