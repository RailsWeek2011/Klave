class DocumentsController < ApplicationController
    before_filter :authenticate_user!, :except => [:index, :show]
    #before_filter :is_admin?, :except => [:index, :show, :new :create]


  # GET /documents
  # GET /documents.json
  def index
   # @documents = Document.all
    params.delete :utf8
    @documents = Document.filter(params)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documents }
    end
  end



  # GET /documents/1
  # GET /documents/1.json
  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document }
    end
  end

  # GET /documents/new
  # GET /documents/new.json
  def new
    @document = Document.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  # GET /documents/1/edit
  def edit
    @document = Document.find(params[:id])
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(params[:document])
    @document.user= current_user
    #TODO: die folgenden Informationen extrahieren
   #@document.file_size= File.size(params[:document][:file_path].tempfile)
        @document.file_name= params[:document][:file_path].original_filename
    @document.file_type= params[:document][:file_path].content_type
    @document.tag_list = @document.course.name, @document.lecturer.name, @document.semester.name, @document.user.name
    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render json: @document, status: :created, location: @document }
      else
        format.html { render action: "new" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /documents/1
  # PUT /documents/1.json
  def update
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to documents_url }
      format.json { head :ok }
    end
  end

  protected
      def is_admin?
        unless current_user.try(:admin?)
          redirect_to :back
          flash[:alert] = "Access denied! Lack of permissions"
        end
      end
end
