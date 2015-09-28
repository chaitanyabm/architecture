class BuildersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @builder = Builder.all
   
  end
  
  def new
    @builder= Builder.new
   
  end
  
  def edit
       @builder = Builder.find(params[:id])
       
  end
  
  def create
    @builder= Builder.new(builder_params)
     
    if (@builder.save)
      redirect_to builders_path, notice:"the builders details were added"
    else
      render action: "new"
    end
  end
  
  
  
  def destroy
      @builder= Builder.find(params[:id])
        @builder.destroy
      
        
    redirect_to builders_path,notice: "Succesfully Deleted The Question"
  end
  
  def update
    @builder = Builder.find(params[:id])
    @builder.update_attributes(builder_params)
   
    redirect_to builders_path, notice: "Succesfully Upadted the Question"
  end
  
 
  def show
     @builder= Builder.find(params[:id])
   
  end
 
  
  private
  def builder_params
    params[:builder].permit(:bname,:location,:project,:bhk_details)
  end
  
end
