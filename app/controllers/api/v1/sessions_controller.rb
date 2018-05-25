class Api::V1::SessionsController < Api::V1::BaseController
  skip_before_filter :verify_authenticity_token

  def create
    user = User.find_by(email: params[:email])

    if user and user.valid_password? params[:password]
      render json: user.as_json(only: [:email, :authentication_token]), status: :created
    else
      render json: { errors: "Invalid email or password" }, status: :bad_request
    end
  end

  def destroy
    user = User.find_by(email: params[:email])
    if user and user.authentication_token == params[:authentication_token]
      user.authentication_token = nil
      user.save!
      output = {'Message' => 'Succesfully logout!'}.to_json
      render :json => output,status: :ok
    else
      output = {'Error' => 'Invalid credentials!'}.to_json
      render :json => output ,status: :bad_request
      #head(:unauthorized)
    end
  end
end
