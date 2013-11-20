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

describe DiscussionTopicsController do

  # This should return the minimal set of attributes required to create a valid
  # DiscussionTopic. As you add validations to DiscussionTopic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DiscussionTopicsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all discussion_topics as @discussion_topics" do
      discussion_topic = DiscussionTopic.create! valid_attributes
      get :index, {}, valid_session
      assigns(:discussion_topics).should eq([discussion_topic])
    end
  end

  describe "GET show" do
    it "assigns the requested discussion_topic as @discussion_topic" do
      discussion_topic = DiscussionTopic.create! valid_attributes
      get :show, {:id => discussion_topic.to_param}, valid_session
      assigns(:discussion_topic).should eq(discussion_topic)
    end
  end

  describe "GET new" do
    it "assigns a new discussion_topic as @discussion_topic" do
      get :new, {}, valid_session
      assigns(:discussion_topic).should be_a_new(DiscussionTopic)
    end
  end

  describe "GET edit" do
    it "assigns the requested discussion_topic as @discussion_topic" do
      discussion_topic = DiscussionTopic.create! valid_attributes
      get :edit, {:id => discussion_topic.to_param}, valid_session
      assigns(:discussion_topic).should eq(discussion_topic)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DiscussionTopic" do
        expect {
          post :create, {:discussion_topic => valid_attributes}, valid_session
        }.to change(DiscussionTopic, :count).by(1)
      end

      it "assigns a newly created discussion_topic as @discussion_topic" do
        post :create, {:discussion_topic => valid_attributes}, valid_session
        assigns(:discussion_topic).should be_a(DiscussionTopic)
        assigns(:discussion_topic).should be_persisted
      end

      it "redirects to the created discussion_topic" do
        post :create, {:discussion_topic => valid_attributes}, valid_session
        response.should redirect_to(DiscussionTopic.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved discussion_topic as @discussion_topic" do
        # Trigger the behavior that occurs when invalid params are submitted
        DiscussionTopic.any_instance.stub(:save).and_return(false)
        post :create, {:discussion_topic => { "user_id" => "invalid value" }}, valid_session
        assigns(:discussion_topic).should be_a_new(DiscussionTopic)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DiscussionTopic.any_instance.stub(:save).and_return(false)
        post :create, {:discussion_topic => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested discussion_topic" do
        discussion_topic = DiscussionTopic.create! valid_attributes
        # Assuming there are no other discussion_topics in the database, this
        # specifies that the DiscussionTopic created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DiscussionTopic.any_instance.should_receive(:update).with({ "user_id" => "1" })
        put :update, {:id => discussion_topic.to_param, :discussion_topic => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested discussion_topic as @discussion_topic" do
        discussion_topic = DiscussionTopic.create! valid_attributes
        put :update, {:id => discussion_topic.to_param, :discussion_topic => valid_attributes}, valid_session
        assigns(:discussion_topic).should eq(discussion_topic)
      end

      it "redirects to the discussion_topic" do
        discussion_topic = DiscussionTopic.create! valid_attributes
        put :update, {:id => discussion_topic.to_param, :discussion_topic => valid_attributes}, valid_session
        response.should redirect_to(discussion_topic)
      end
    end

    describe "with invalid params" do
      it "assigns the discussion_topic as @discussion_topic" do
        discussion_topic = DiscussionTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DiscussionTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => discussion_topic.to_param, :discussion_topic => { "user_id" => "invalid value" }}, valid_session
        assigns(:discussion_topic).should eq(discussion_topic)
      end

      it "re-renders the 'edit' template" do
        discussion_topic = DiscussionTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DiscussionTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => discussion_topic.to_param, :discussion_topic => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested discussion_topic" do
      discussion_topic = DiscussionTopic.create! valid_attributes
      expect {
        delete :destroy, {:id => discussion_topic.to_param}, valid_session
      }.to change(DiscussionTopic, :count).by(-1)
    end

    it "redirects to the discussion_topics list" do
      discussion_topic = DiscussionTopic.create! valid_attributes
      delete :destroy, {:id => discussion_topic.to_param}, valid_session
      response.should redirect_to(discussion_topics_url)
    end
  end

end
