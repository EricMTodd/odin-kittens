class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:notice] = "Kitten created."
      redirect_to show_kitten_path(@kitten)
    else
      flash[:alert] = "Failed to create kitten!"
      render :new
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])

    if @kitten.save
      flash[:notice] = "Kitten updated."
      redirect_to show_kitten_path(@kitten)
    else
      flash[:alert] = "Failed to update kitten!"
      render :new
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    flash[:notice] = "Kitten destroyed."
    redirect_to root_path
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :breed, :color)
  end
end