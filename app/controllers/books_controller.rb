class BooksController < ApplicationController
 
  	before_action :set_dept, only: [:show, :edit, :update, :destroy]

	def index
		@depts = Book.all
	end

	def create
		@dept = Book.new(dept_params)

		respond_to do |format|
			if @dept.save
				format.html {redirect_to @dept, notice: 'Book was created' } 
			else
				format.html {render :new}
			end
		end

	end

	def new
		@dept = Book.new
	end

	def update
		respond_to  do |format|
			if @dept.update(dept_params)
				format.html { redirect_to @dept, notice: 'Updated' }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@dept.destroy
		respond_to do |format|
			format.html { redirect_to books_url, notice: 'Destroyed' }


	end

	def show

	end
end

private

def set_dept
	@dept = Book.find(params[:id])
end

def dept_params
	params.require(:book).permit(:name, :year, :department)
end
end

  

  
