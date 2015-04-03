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

RSpec.describe OtgErrsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # OtgErr. As you add validations to OtgErr, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OtgErrsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all otg_errs as @otg_errs" do
      otg_err = OtgErr.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:otg_errs)).to eq([otg_err])
    end
  end

  describe "GET #show" do
    it "assigns the requested otg_err as @otg_err" do
      otg_err = OtgErr.create! valid_attributes
      get :show, {:id => otg_err.to_param}, valid_session
      expect(assigns(:otg_err)).to eq(otg_err)
    end
  end

  describe "GET #new" do
    it "assigns a new otg_err as @otg_err" do
      get :new, {}, valid_session
      expect(assigns(:otg_err)).to be_a_new(OtgErr)
    end
  end

  describe "GET #edit" do
    it "assigns the requested otg_err as @otg_err" do
      otg_err = OtgErr.create! valid_attributes
      get :edit, {:id => otg_err.to_param}, valid_session
      expect(assigns(:otg_err)).to eq(otg_err)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new OtgErr" do
        expect {
          post :create, {:otg_err => valid_attributes}, valid_session
        }.to change(OtgErr, :count).by(1)
      end

      it "assigns a newly created otg_err as @otg_err" do
        post :create, {:otg_err => valid_attributes}, valid_session
        expect(assigns(:otg_err)).to be_a(OtgErr)
        expect(assigns(:otg_err)).to be_persisted
      end

      it "redirects to the created otg_err" do
        post :create, {:otg_err => valid_attributes}, valid_session
        expect(response).to redirect_to(OtgErr.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved otg_err as @otg_err" do
        post :create, {:otg_err => invalid_attributes}, valid_session
        expect(assigns(:otg_err)).to be_a_new(OtgErr)
      end

      it "re-renders the 'new' template" do
        post :create, {:otg_err => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested otg_err" do
        otg_err = OtgErr.create! valid_attributes
        put :update, {:id => otg_err.to_param, :otg_err => new_attributes}, valid_session
        otg_err.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested otg_err as @otg_err" do
        otg_err = OtgErr.create! valid_attributes
        put :update, {:id => otg_err.to_param, :otg_err => valid_attributes}, valid_session
        expect(assigns(:otg_err)).to eq(otg_err)
      end

      it "redirects to the otg_err" do
        otg_err = OtgErr.create! valid_attributes
        put :update, {:id => otg_err.to_param, :otg_err => valid_attributes}, valid_session
        expect(response).to redirect_to(otg_err)
      end
    end

    context "with invalid params" do
      it "assigns the otg_err as @otg_err" do
        otg_err = OtgErr.create! valid_attributes
        put :update, {:id => otg_err.to_param, :otg_err => invalid_attributes}, valid_session
        expect(assigns(:otg_err)).to eq(otg_err)
      end

      it "re-renders the 'edit' template" do
        otg_err = OtgErr.create! valid_attributes
        put :update, {:id => otg_err.to_param, :otg_err => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested otg_err" do
      otg_err = OtgErr.create! valid_attributes
      expect {
        delete :destroy, {:id => otg_err.to_param}, valid_session
      }.to change(OtgErr, :count).by(-1)
    end

    it "redirects to the otg_errs list" do
      otg_err = OtgErr.create! valid_attributes
      delete :destroy, {:id => otg_err.to_param}, valid_session
      expect(response).to redirect_to(otg_errs_url)
    end
  end

end