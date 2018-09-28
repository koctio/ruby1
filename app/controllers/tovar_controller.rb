class TovarController < ApplicationController
  
  def index
    @tovars=Tovar.all
  end
  
  def show
    @tovar=Tovar.find(params[:id])
    #render json: @tovar
  end
  
  def edit
    @tovar=Tovar.find(params[:id])
  end
  
  def new
    @tovar=Tovar.new
    #@tovar.name='Undefined'
    #@tovar.article='000'
    #@tovar.comment='No comment'
    @tovar.hidden=true
    @tovar.created_at=Time.now
    @tovar.updated_at=Time.now
    @tovar.save
    render :edit
  end
  
  def update
    @tovar=Tovar.find(params[:id])
    @tovar.name=str_simpl(params[:tovar][:name])
    @tovar.article=str_simpl(params[:tovar][:article])
    @tovar.comment=str_simpl(params[:tovar][:comment])
    @tovar.hidden=params[:tovar][:hidden]
    @tovar.updated_at=updated_at=Time.now
    @tovar.save
    render :show
  end
  
  def destroy
    @tovar=Tovar.find(params[:id])
    #@tovar.destroy
    @tovar.hidden=true
    @tovar.save
    redirect_to tovar_index_path
  end
  
  def purge
    sql= <<-END
      DELETE FROM tovars WHERE name IS NULL AND hidden;
    END
    Tovar.connection.execute(sql)
    redirect_to tovar_index_path
  end
  
end
