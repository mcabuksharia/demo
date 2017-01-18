class EmployeesController < ApplicationController
#before_action :verify, :only =>:index
#before_save :ding
#around_filter :new
before_action :authenticate_user!
  def index
  	@employees=Employee.all
  	@employee = @employees.order(:emp_name).page params[:page]  # used for kaminari gem
		
  end

  def new
  	

  	@employee=Employee.new

  end
  def create
  	@employee=Employee.new(employee_params)
  	if (@employee.save)
  		redirect_to employee_path(@employee)
  	
  else
  	render "new"
  end
  end

  def show
  	@employee=Employee.find(params[:id])
  	respond_to do |format|
      format.html

  end
  end

  def destroy
  	@emp=Employee.find(params[:id])
  	@emp.destroy
  	respond_to do |format|
  		format.html{redirect_to employees_path}
  	end
  end

  def edit
  	
  	@employee=Employee.find(params[:id])
  end
 def update
 	@employee =Employee.find(params[:id])
 	if (@employee.update(employee_params))
  		respond_to do |format|
  		format.html{redirect_to employees_path}
  	end
  	end
end
private
def employee_params
  	params.require(:employee).permit(:emp_name,:emp_des,:avatar)
  end

 def verify
 	if (@employee==nil)
 		redirect_to new_employee_path
 	else
 		respond_to do |format|
  		format.html{redirect_to employees_path}
  	end
  end

 end

end
