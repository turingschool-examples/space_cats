class CatsController <ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cats = Cat.new
  end

  def create
    cat = Cat.create(cat_params)
    redirect_to "/cats"
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    cat = Cat.find(params[:id])
    cat.update(cat_params)
    redirect_to "/cats/#{cat.id}"
  end

  private

  def cat_params
    params.require(:cat).permit(:name)
  end

end
