require 'rails_helper'

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

RSpec.describe GymsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Gym. As you add validations to Gym, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: "valid", address:"somewhere", phone: "myphone" }
  }

  let(:invalid_attributes) {
    { name: "", address:"somewhere", phone: "myphone" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GymsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all gyms as @gyms" do
      gym = Gym.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:gyms)).to eq([gym])
    end
  end

  describe "GET #show" do
    it "assigns the requested gym as @gym" do
      gym = Gym.create! valid_attributes
      get :show, {:id => gym.to_param}, valid_session
      expect(assigns(:gym)).to eq(gym)
    end
  end

  describe "GET #new" do
    it "assigns a new gym as @gym" do
      get :new, {}, valid_session
      expect(assigns(:gym)).to be_a_new(Gym)
    end
  end

  describe "GET #edit" do
    it "assigns the requested gym as @gym" do
      gym = Gym.create! valid_attributes
      get :edit, {:id => gym.to_param}, valid_session
      expect(assigns(:gym)).to eq(gym)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Gym" do
        expect {
          post :create, {:gym => valid_attributes}, valid_session
        }.to change(Gym, :count).by(1)
      end

      it "assigns a newly created gym as @gym" do
        post :create, {:gym => valid_attributes}, valid_session
        expect(assigns(:gym)).to be_a(Gym)
        expect(assigns(:gym)).to be_persisted
      end

      it "redirects to the created gym" do
        post :create, {:gym => valid_attributes}, valid_session
        expect(response).to redirect_to(Gym.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved gym as @gym" do
        post :create, {:gym => invalid_attributes}, valid_session
        expect(assigns(:gym)).to be_a_new(Gym)
      end

      it "re-renders the 'new' template" do
        post :create, {:gym => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { name: "another name", address: "another address", phone:"another phone"}
      }

      it "updates the requested gym" do
        gym = Gym.create! valid_attributes
        put :update, {:id => gym.to_param, :gym => new_attributes}, valid_session
        gym.reload
        expect(gym.name).to eq("another name")
        expect(gym.address).to eq("another address")
        expect(gym.phone).to eq("another phone")
      end

      it "assigns the requested gym as @gym" do
        gym = Gym.create! valid_attributes
        put :update, {:id => gym.to_param, :gym => valid_attributes}, valid_session
        expect(assigns(:gym)).to eq(gym)
      end

      it "redirects to the gym" do
        gym = Gym.create! valid_attributes
        put :update, {:id => gym.to_param, :gym => valid_attributes}, valid_session
        expect(response).to redirect_to(gym)
      end
    end

    context "with invalid params" do
      it "assigns the gym as @gym" do
        gym = Gym.create! valid_attributes
        put :update, {:id => gym.to_param, :gym => invalid_attributes}, valid_session
        expect(assigns(:gym)).to eq(gym)
      end

      it "re-renders the 'edit' template" do
        gym = Gym.create! valid_attributes
        put :update, {:id => gym.to_param, :gym => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested gym" do
      gym = Gym.create! valid_attributes
      expect {
        delete :destroy, {:id => gym.to_param}, valid_session
      }.to change(Gym, :count).by(-1)
    end

    it "redirects to the gyms list" do
      gym = Gym.create! valid_attributes
      delete :destroy, {:id => gym.to_param}, valid_session
      expect(response).to redirect_to(gyms_url)
    end
  end

end