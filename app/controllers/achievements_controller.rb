class AchievementsController < ApplicationController

    def index
      @achievements = Achievement.all
    end

    def show
      @achievement = Achievement.find(params[:id])
    end

    def new
      @achievement = Achievement.new
    end

    def create
      @achievement = Achievement.new(achievement_params)
      if @achievement.save
        redirect_to achievements_path
      else
        render :new
      end
    end

    def edit
      @achievement = Achievement.find(params[:id])
    end

    def update
      @achievement = Achievement.find(params[:id])
      if @achievement.update(achievement_params)
        redirect_to achievements_path
      else
        render :edit
      end
    end

    def destroy
      @achievement = Achievement.find(params[:id])
      @achievement.destroy
      redirect_to achievements_path
    end

    private

    def achievement_params
      params.require(:achievement).permit(:title, :description, :points)
    end
end
