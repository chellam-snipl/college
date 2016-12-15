class DepartmentsController < ApplicationController
  before_action :set_dept, only: [:show, :edit, :update, :destroy]

	def index
		@depts = Department.all
	end

	def create
		@dept = Department.new(dept_params)

		respond_to do |format|
			if @dept.save
				format.html {redirect_to @dept, notice: 'Book was created' } 
			else
				format.html {render :new}
			end
		end

	end

	def new
		@dept = Department.new
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
			format.html { redirect_to departments_url, notice: 'Destroyed' }


	end

	def show

	end
end

private

def set_dept
	@dept = Department.find(params[:id])
end

def dept_params
	params.require(:department).permit(:name, :year, :department)
end
end

  
