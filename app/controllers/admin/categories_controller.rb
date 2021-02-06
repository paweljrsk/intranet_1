class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = ProductCategory.all
  end

  def new
    @category = ProductCategory.new
  end

  def create
    @category = ProductCategory.new(category_params)
    if @category.save
      redirect_to admin_categories_path, notice: "Pomyślnie dodano kategorię"
    else
    render action: :new
    end
  end

  def edit
  end

  private
  def category_params
    params.require(:category).permit(
      :name,
    )
  end

end