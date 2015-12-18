class Admin::ProgrammesController < Admin::AdminController
  def index
    @programmes = Programme.all
  end

  def show
    @programme = Programme.find(params[:id])
  end

  def new
    @programme = Programme.new
  end

  # GET /programmes/1/edit
  def edit
    @programme = Programme.find(params[:id])
  end

  def create
    @programme = Programme.new(programme_params)

    if @programme.save
      flash[:notice] = 'Data category was successfully created.'
      redirect_to([:admin, @programme])
    else
      render :action => "new"
    end
  end

  def update
    @programme = Programme.find(params[:id])

    if @programme.update_attributes(programme_params)
      flash[:notice] = 'Data category was successfully updated.'
      redirect_to([:admin, @programme])
    else
        render :action => "edit"
    end
  end

  def destroy
    @programme = Programme.find(params[:id])
    @programme.destroy

    redirect_to(admin_programmes_url)
  end

  private

  def programme_params
    params.require(:programme).permit(:name, :description)
  end
end