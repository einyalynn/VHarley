module PortfolioHelper
  class Utilities
  def getFileName(location)
    if location.respond_to? 'split'
      nameParts = location.split '/'
      return nameParts.pop
    end
  end
  end
  class Clients
     # @return [clients]
     def get_clients
      @client_set = [ 'Merrell Publishing',  'Jacqui Small Publishing',
      'Absolutely Food PR',
  'Huts and Hideaways',
      'Tesco Real Food Magazine',
  'Vicky Grant Smith Interiors',
      'Dumouchel Patisserie',
  'Yorkshire Life',
      'Copperwheat Agriculture',
  'Channel 4 Food',
      'TeaHee Espresso Bar',
  'Quad Speakers',
      'Jamsmith',
  'Sutton Beef and Lamb']
      return @client_set
    end
  end
end
