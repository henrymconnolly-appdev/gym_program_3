class LiftTotalsController < ApplicationController
  def index
    @lift_totals = LiftTotal.page(params[:page]).per(10)

    render("lift_total_templates/index.html.erb")
  end

  def show
    @lift_total = LiftTotal.find(params.fetch("id_to_display"))

    render("lift_total_templates/show.html.erb")
  end

  def new_form
    @lift_total = LiftTotal.new

    render("lift_total_templates/new_form.html.erb")
  end

  def create_row
    @lift_total = LiftTotal.new

    @lift_total.profile_id = params.fetch("profile_id")
    @lift_total.weight = params.fetch("weight")
    @lift_total.date = params.fetch("date")

    if @lift_total.valid?
      @lift_total.save

      redirect_back(:fallback_location => "/lift_totals", :notice => "Lift total created successfully.")
    else
      render("lift_total_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_profile
    @lift_total = LiftTotal.new

    @lift_total.profile_id = params.fetch("profile_id")
    @lift_total.weight = params.fetch("weight")
    @lift_total.date = params.fetch("date")

    if @lift_total.valid?
      @lift_total.save

      redirect_to("/profiles/#{@lift_total.profile_id}", notice: "LiftTotal created successfully.")
    else
      render("lift_total_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @lift_total = LiftTotal.find(params.fetch("prefill_with_id"))

    render("lift_total_templates/edit_form.html.erb")
  end

  def update_row
    @lift_total = LiftTotal.find(params.fetch("id_to_modify"))

    @lift_total.profile_id = params.fetch("profile_id")
    @lift_total.weight = params.fetch("weight")
    @lift_total.date = params.fetch("date")

    if @lift_total.valid?
      @lift_total.save

      redirect_to("/lift_totals/#{@lift_total.id}", :notice => "Lift total updated successfully.")
    else
      render("lift_total_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_profile
    @lift_total = LiftTotal.find(params.fetch("id_to_remove"))

    @lift_total.destroy

    redirect_to("/profiles/#{@lift_total.profile_id}", notice: "LiftTotal deleted successfully.")
  end

  def destroy_row
    @lift_total = LiftTotal.find(params.fetch("id_to_remove"))

    @lift_total.destroy

    redirect_to("/lift_totals", :notice => "Lift total deleted successfully.")
  end
end
