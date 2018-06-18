class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]
  before_action :load_parent

  # GET /children
  # GET /children.json
  def index
    @children = @parent.children.all
  end

  # GET /children/1
  # GET /children/1.json
  def show
    @child = @parent.children.find(params[:id])
  end

  # GET /children/new
  def new
    @child = @parent.children.new
  end

  # GET /children/1/edit
  def edit
    @child = @parent.children.find(params[:id])
  end

  # POST /children
  # POST /children.json
  def create
    @child = @parent.children.new(params[:child_params])

    respond_to do |format|
      if @child.save
        format.html { redirect_to [@parent, @child], notice: 'Child was successfully created.' }
        format.json { render :show, status: :created, location: @child }
      else
        format.html { render :new }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /children/1
  # PATCH/PUT /children/1.json
  def update
    @child = @parent.children.find(params[:id])

    respond_to do |format|
      if @child.update(child_params)
        format.html { redirect_to [@parent, @child], notice: 'Child was successfully updated.' }
        format.json { render :show, status: :ok, location: @child }
      else
        format.html { render :edit }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children/1
  # DELETE /children/1.json
  def destroy
    @child = @parent.children.find(params[:id])
    @child.destroy
    respond_to do |format|
      format.html { redirect_to parent_children_path(@parent), notice: 'Child was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child
      @child = Child.find(params[:id])
    end

    def load_parent
      @parent = Parent.find(params[:parent_id])

    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def child_params
      params.require(:child).permit(:name, :parent_id)
    end



end
