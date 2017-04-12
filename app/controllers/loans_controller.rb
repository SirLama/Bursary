class LoansController < ApplicationController
  before_action :admin, only: :index
  def new
    @loan = current_user.loans.build
  end

  def create
    @loan = current_user.loans.build(loan_params)
    if @loan.save
      flash[:success] = 'Loan successfully submitted!!'
      redirect_to current_user
    else
      flash[:danger] = 'Error'
      render 'new'
    end
  end
  def index 
    @loans = Loan.where('status=0')
    @bursary = Loan.where('status=1')
    
  end
  def accept
    @loan = Loan.find(params[:loan_id])
    @loan.update_attributes(status:"accepted")
    @loan.save
    redirect_to loans_path
  end

  def destroy
   Loan.find(params[:id]).destroy
   flash[:danger]="Bursery request rejected"
    redirect_to loans_path

  end

  private
  def loan_params
    params.require(:loan).permit(:fname, :lname, :mname,:status, :id_no, :telephone, :gender, :work, :county, :school, :amount)
  end

end
