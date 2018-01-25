class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create, :show, :signUp]

  def create
    gamer = Gamer.find_by(name: params[:name])

    if gamer && gamer.authenticate(params[:password])
      render json: {
        profile: gamer.profile,
        name: gamer.name,
        id: gamer.id,
        token: issue_token({ id: gamer.id })
      }
    else
      render json: { error: 'Gamer is invalid' }, status: 401
    end
  end

  def signUp
    gamer = Gamer.create(name: params[:name], password: params[:password])

    if gamer && gamer.authenticate(params[:password])
      Profile.create(game: "StarCraft", high_score: 0, gamer: gamer)
      render json: {
        profile:gamer.profile,
        name: gamer.name,
        id: gamer.id,
        token: issue_token({id: gamer.id})
      }
    else
      render json: { error: 'Gamer is invalid' }, status: 401
    end
  end

  def show
    if current_user
      render json: {
        profile: current_user.profile,
        id: current_user.id,
        name: current_user.name
      }
    else
      render json: { error: 'Invalid token' }, status: 401
    end
  end
end
