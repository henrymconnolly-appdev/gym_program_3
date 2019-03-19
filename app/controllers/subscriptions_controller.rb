class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all

    render("subscription_templates/index.html.erb")
  end

  def show
    @subscription = Subscription.find(params.fetch("id_to_display"))

    render("subscription_templates/show.html.erb")
  end

  def new_form
    @subscription = Subscription.new

    render("subscription_templates/new_form.html.erb")
  end

  def create_row
    @subscription = Subscription.new

    @subscription.feed_id = params.fetch("feed_id")
    @subscription.profile_id = params.fetch("profile_id")

    if @subscription.valid?
      @subscription.save

      redirect_back(:fallback_location => "/subscriptions", :notice => "Subscription created successfully.")
    else
      render("subscription_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_profile
    @subscription = Subscription.new

    @subscription.feed_id = params.fetch("feed_id")
    @subscription.profile_id = params.fetch("profile_id")

    if @subscription.valid?
      @subscription.save

      redirect_to("/profiles/#{@subscription.profile_id}", notice: "Subscription created successfully.")
    else
      render("subscription_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_feed
    @subscription = Subscription.new

    @subscription.feed_id = params.fetch("feed_id")
    @subscription.profile_id = params.fetch("profile_id")

    if @subscription.valid?
      @subscription.save

      redirect_to("/feeds/#{@subscription.feed_id}", notice: "Subscription created successfully.")
    else
      render("subscription_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @subscription = Subscription.find(params.fetch("prefill_with_id"))

    render("subscription_templates/edit_form.html.erb")
  end

  def update_row
    @subscription = Subscription.find(params.fetch("id_to_modify"))

    @subscription.feed_id = params.fetch("feed_id")
    @subscription.profile_id = params.fetch("profile_id")

    if @subscription.valid?
      @subscription.save

      redirect_to("/subscriptions/#{@subscription.id}", :notice => "Subscription updated successfully.")
    else
      render("subscription_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_profile
    @subscription = Subscription.find(params.fetch("id_to_remove"))

    @subscription.destroy

    redirect_to("/profiles/#{@subscription.profile_id}", notice: "Subscription deleted successfully.")
  end

  def destroy_row_from_feed
    @subscription = Subscription.find(params.fetch("id_to_remove"))

    @subscription.destroy

    redirect_to("/feeds/#{@subscription.feed_id}", notice: "Subscription deleted successfully.")
  end

  def destroy_row
    @subscription = Subscription.find(params.fetch("id_to_remove"))

    @subscription.destroy

    redirect_to("/subscriptions", :notice => "Subscription deleted successfully.")
  end
end
