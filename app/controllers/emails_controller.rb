require "faker"

class EmailsController < ApplicationController



  def index
    @emails = Email.all.reverse

  end

  def new
  end
  
  def create
    @email = Email.new(object: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(5), read: 'false')

      if @email.save # essaie de sauvegarder en base @email
            respond_to do |format|
      			format.html { redirect_to root_path }
      			format.js { }
    		end

      else
            respond_to do |format|
      			format.html { redirect_to root_path }
      			format.js { }
    		end
      end
  end

def show
    @email = Email.find(params[:id])
    @email.update(read: true)
    respond_to do |format|
      format.html { redirect_to email_path }
      format.js { }
    end

end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
     respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def update
    @email = Email.find(params[:id])
    @email.read ? @email.update(read: false) : @email.update(read: true)
     respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end


end

