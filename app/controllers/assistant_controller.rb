class AssistantController < ApplicationController
  def messenger
    query = (params[:result].present?)? params[:result] : "Ruby On Rails"
    page = WikipediaConsulter.find_by_name(query)

    response =
    {
      "speech": "#{page.text.slice(0, 60)}... \b link completo: #{page.fullurl}",
      "displayText": "#{page.text.slice(0, 60)}... \b link completo: #{page.fullurl}",
      "data": "",
      "source": "Programming Assitant"
    }

    render json: response
  end
end
