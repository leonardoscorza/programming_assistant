class WikipediaConsulter
  require 'wikipedia'

  def self.find_by_name(param)
    Wikipedia.find(param)
  end

end
