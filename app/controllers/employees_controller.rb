class EmployeesController < ApplicationController
  def index
		if params[:query].present?
			@employees = Employee.where("name like ?","%#{params[:query]}%")
		else
  		@employees = Employee.all.order(:name)
		end
  end
  
	def show
    @employee = Employee.find(params[:id])
  end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employee_params)
		if @employee.save
      redirect_to @employee
    else
      render :new, status: :unprocessable_entity
    end
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])

		if @employee.update(employee_params)
      redirect_to employees_url
    else
      render :new, status: :unprocessable_entity
    end
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		flash[:success] = "The employee was successfully destroyed."
		redirect_to employees_url
	end

	private

	def employee_params
		params.require(:employee).permit(:name, :address, :date_of_birth, :mobile_number)
	end
end
