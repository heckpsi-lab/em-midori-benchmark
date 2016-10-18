class WelcomeController < ActionController::API
  def index
    render json: {msg: 'Hello World'}
  end
end
