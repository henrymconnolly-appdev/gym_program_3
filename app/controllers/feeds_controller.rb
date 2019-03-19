class FeedsController < ApplicationController
  def index
    @feeds = Feed.all

    render("feed_templates/index.html.erb")
  end

  def show
    @feed = Feed.find(params.fetch("id_to_display"))

    render("feed_templates/show.html.erb")
  end

  def new_form
    @feed = Feed.new

    render("feed_templates/new_form.html.erb")
  end

  def create_row
    @feed = Feed.new

    @feed.user_id = params.fetch("user_id")

    if @feed.valid?
      @feed.save

      redirect_back(:fallback_location => "/feeds", :notice => "Feed created successfully.")
    else
      render("feed_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @feed = Feed.find(params.fetch("prefill_with_id"))

    render("feed_templates/edit_form.html.erb")
  end

  def update_row
    @feed = Feed.find(params.fetch("id_to_modify"))

    @feed.user_id = params.fetch("user_id")

    if @feed.valid?
      @feed.save

      redirect_to("/feeds/#{@feed.id}", :notice => "Feed updated successfully.")
    else
      render("feed_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @feed = Feed.find(params.fetch("id_to_remove"))

    @feed.destroy

    redirect_to("/feeds", :notice => "Feed deleted successfully.")
  end
end
