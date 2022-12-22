require 'rails_helper'

RSpec.describe TicketsController, type: :controller do
  context "test" do
    it "displays all Tickets" do
      get :index
    end
    describe "PUT update/:ticket.id " do
      let(:attr) do 
        { :title => 'new title', :description => 'new content', :current_state => 'not null', :current_release_milestone => 'any string', :project_id => 'project id'} 
      end
    
      before(:each) do
        put :update, @ticket => attr
        @ticket.reload
      end
    
      it { response.should redirect_to(@ticket) }
      it { @ticket.title.should eql attr[:title] }
      it { @ticket.description.should eql attr[:description]}
      it {@ticket.current_state.should eql attr [:current_state, %i(backlog open started pr_open to_be_tested closed)]}
    end
    describe "PUT 'update/:id'" do
      it "allows an article to be updated" do
        @ticket_params = { :title => "new title", :description => "new content" }
        put :update, :id => @ticket.id, :ticket => @ticket_params 
        response.should be_successful
      end
    end
    it "Delete Tickets" do
      @ticket.destroy
    end

  end  
end
