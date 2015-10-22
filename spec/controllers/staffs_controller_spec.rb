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

RSpec.describe StaffsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Staff. As you add validations to Staff, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { code: 'VALIDCODE' }
  }

  let(:invalid_attributes) {
    { code: '' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StaffsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all staffs as @staffs" do
      staff = Staff.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:staffs)).to eq([staff])
    end
  end

  describe "GET #show" do
    it "assigns the requested staff as @staff" do
      staff = Staff.create! valid_attributes
      get :show, {:id => staff.to_param}, valid_session
      expect(assigns(:staff)).to eq(staff)
    end
  end

  describe "GET #new" do
    it "assigns a new staff as @staff" do
      get :new, {}, valid_session
      expect(assigns(:staff)).to be_a_new(Staff)
    end
  end

  describe "GET #edit" do
    it "assigns the requested staff as @staff" do
      staff = Staff.create! valid_attributes
      get :edit, {:id => staff.to_param}, valid_session
      expect(assigns(:staff)).to eq(staff)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Staff" do
        expect {
          post :create, {:staff => valid_attributes}, valid_session
        }.to change(Staff, :count).by(1)
      end

      it "assigns a newly created staff as @staff" do
        post :create, {:staff => valid_attributes}, valid_session
        expect(assigns(:staff)).to be_a(Staff)
        expect(assigns(:staff)).to be_persisted
      end

      it "redirects to the created staff" do
        post :create, {:staff => valid_attributes}, valid_session
        expect(response).to redirect_to(Staff.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved staff as @staff" do
        post :create, {:staff => invalid_attributes}, valid_session
        expect(assigns(:staff)).to be_a_new(Staff)
      end

      it "re-renders the 'new' template" do
        post :create, {:staff => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { code: 'NEWVALIDCODE' }
        # skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => new_attributes}, valid_session
        staff.reload
        expect(staff.code).to eq 'NEWVALIDCODE'
      end

      it "assigns the requested staff as @staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => valid_attributes}, valid_session
        expect(assigns(:staff)).to eq(staff)
      end

      it "redirects to the staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => valid_attributes}, valid_session
        expect(response).to redirect_to(staff)
      end
    end

    context "with invalid params" do
      it "assigns the staff as @staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => invalid_attributes}, valid_session
        expect(assigns(:staff)).to eq(staff)
      end

      it "re-renders the 'edit' template" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested staff" do
      staff = Staff.create! valid_attributes
      expect {
        delete :destroy, {:id => staff.to_param}, valid_session
      }.to change(Staff, :count).by(-1)
    end

    it "redirects to the staffs list" do
      staff = Staff.create! valid_attributes
      delete :destroy, {:id => staff.to_param}, valid_session
      expect(response).to redirect_to(staffs_url)
    end
  end

end
