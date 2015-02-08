class Gif

  attr_reader :source
  def initialize(param_dict)
    @params = param_dict
    @source = param_dict['images']['original']['url']
  end

end