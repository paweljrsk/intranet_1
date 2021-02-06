class Admin::ProductTypesController < Admin::BaseController
  def index
    @product_types = ProductType.all
  end

  def new
    @product_type = ProductType.new
  end

  def create
    @product_type = ProductType.new(product_type_params)
    if @product_type.save
      redirect_to admin_product_types_path, notice: "Pomyślnie dodano nowy typ produktu"
      else
      render action: :new
      end
  end

  def edit
    @product_type = ProductType.find(params[:id])
  end

  def update
    @product_type = ProductType.find(params[:id])
    if @product_type.update_attributes(product_type_params)
      redirect_to admin_product_types_path, notice: "Pomyślnie zaktualizowano typ produktu"
    else
      render action: :edit
    end
  end

  private
  def product_type_params
    params.require(:product_type).permit(
      :name,
      :product_category_id
    )
  end
end
