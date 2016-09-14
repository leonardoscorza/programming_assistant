class WikipediaConsulter
  require 'wikipedia'

  Wikipedia.Configure {
    domain 'wikipedia.org'
    path   'w/api.php'
  }

  def self.find_by_name(param)
    Wikipedia.find(param)
  end

end
