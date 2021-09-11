class AddressesController < ApplicationController
    def index
      @address = Store.all
      render component: 'Stores', props:{stores: @stores}
    end
  
    def show
      @store = Store.find(params[:id])
      render component: 'Store', props:{store: @store}
    end
  
    def new
      @store = Store.new
      render component: 'StoreNew', props:{store: @store}
    end
  
    def create
      @store = Store.new(store_params)
      if @store.save
        redirect_to root_path
      else
        render :new
      end
    end
  
    def edit
      @store = Store.find(params[:id])
      render component: 'StoreEdit', props:{store: @store}
    end
  
    def update
      @store = Store.find(params[:id])
      if @store.update(store_params)
        redirect_to root_path
      else
        render :edit
      end
    end
  
    def destroy
      @store = Store.find(params[:id])
      @store.destroy
      redirect_to store_path(@store)
    end
  
    private
    def store_params
      params.require(:store).permit(:name, :location)
    end
  
  end
  
