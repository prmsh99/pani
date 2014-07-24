class JobregistrationsController < ApplicationController
	def index
		@jobs=Jobregistration.new
	end
    
    def create
    	@job = Jobregistration.new(user_params)
        if @job.save
           flash[:notice] = "You have successfully registered "
            redirect_to root_url

        else
        	flash[:notice] = "Sorry!! You have not registered "
             render 'index'
      end
    end

end
private
    def user_params
      params.require(:jobregistration).permit(:name, :age,:housenumber,:street,:village,:district,:state,:phone,:email,:experience,:qualification,:school1,:school2,:school3,:school4,:passout1,:passout2,:passout3,:passout4,:standard1,:standard2,:standard3,:standard4,:job1,:job2,:job3,:exp1,:exp2,:exp3,:desc,:languages,:choicelocation,:previoussalary,:expectedsalary,:religion,:caste)
          end
