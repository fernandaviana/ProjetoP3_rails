require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DisciplinaprofessorsController do

  # This should return the minimal set of attributes required to create a valid
  # Disciplinaprofessor. As you add validations to Disciplinaprofessor, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DisciplinaprofessorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all disciplinaprofessors as @disciplinaprofessors" do
      disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:disciplinaprofessors).should eq([disciplinaprofessor])
    end
  end

  describe "GET show" do
    it "assigns the requested disciplinaprofessor as @disciplinaprofessor" do
      disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
      get :show, {:id => disciplinaprofessor.to_param}, valid_session
      assigns(:disciplinaprofessor).should eq(disciplinaprofessor)
    end
  end

  describe "GET new" do
    it "assigns a new disciplinaprofessor as @disciplinaprofessor" do
      get :new, {}, valid_session
      assigns(:disciplinaprofessor).should be_a_new(Disciplinaprofessor)
    end
  end

  describe "GET edit" do
    it "assigns the requested disciplinaprofessor as @disciplinaprofessor" do
      disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
      get :edit, {:id => disciplinaprofessor.to_param}, valid_session
      assigns(:disciplinaprofessor).should eq(disciplinaprofessor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Disciplinaprofessor" do
        expect {
          post :create, {:disciplinaprofessor => valid_attributes}, valid_session
        }.to change(Disciplinaprofessor, :count).by(1)
      end

      it "assigns a newly created disciplinaprofessor as @disciplinaprofessor" do
        post :create, {:disciplinaprofessor => valid_attributes}, valid_session
        assigns(:disciplinaprofessor).should be_a(Disciplinaprofessor)
        assigns(:disciplinaprofessor).should be_persisted
      end

      it "redirects to the created disciplinaprofessor" do
        post :create, {:disciplinaprofessor => valid_attributes}, valid_session
        response.should redirect_to(Disciplinaprofessor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved disciplinaprofessor as @disciplinaprofessor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Disciplinaprofessor.any_instance.stub(:save).and_return(false)
        post :create, {:disciplinaprofessor => {}}, valid_session
        assigns(:disciplinaprofessor).should be_a_new(Disciplinaprofessor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Disciplinaprofessor.any_instance.stub(:save).and_return(false)
        post :create, {:disciplinaprofessor => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested disciplinaprofessor" do
        disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
        # Assuming there are no other disciplinaprofessors in the database, this
        # specifies that the Disciplinaprofessor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Disciplinaprofessor.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => disciplinaprofessor.to_param, :disciplinaprofessor => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested disciplinaprofessor as @disciplinaprofessor" do
        disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
        put :update, {:id => disciplinaprofessor.to_param, :disciplinaprofessor => valid_attributes}, valid_session
        assigns(:disciplinaprofessor).should eq(disciplinaprofessor)
      end

      it "redirects to the disciplinaprofessor" do
        disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
        put :update, {:id => disciplinaprofessor.to_param, :disciplinaprofessor => valid_attributes}, valid_session
        response.should redirect_to(disciplinaprofessor)
      end
    end

    describe "with invalid params" do
      it "assigns the disciplinaprofessor as @disciplinaprofessor" do
        disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Disciplinaprofessor.any_instance.stub(:save).and_return(false)
        put :update, {:id => disciplinaprofessor.to_param, :disciplinaprofessor => {}}, valid_session
        assigns(:disciplinaprofessor).should eq(disciplinaprofessor)
      end

      it "re-renders the 'edit' template" do
        disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Disciplinaprofessor.any_instance.stub(:save).and_return(false)
        put :update, {:id => disciplinaprofessor.to_param, :disciplinaprofessor => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested disciplinaprofessor" do
      disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
      expect {
        delete :destroy, {:id => disciplinaprofessor.to_param}, valid_session
      }.to change(Disciplinaprofessor, :count).by(-1)
    end

    it "redirects to the disciplinaprofessors list" do
      disciplinaprofessor = Disciplinaprofessor.create! valid_attributes
      delete :destroy, {:id => disciplinaprofessor.to_param}, valid_session
      response.should redirect_to(disciplinaprofessors_url)
    end
  end

end
