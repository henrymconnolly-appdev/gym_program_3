class LiftTotalDetailsController < ApplicationController
  def index
    @lift_total_details = LiftTotalDetail.all

    render("lift_total_detail_templates/index.html.erb")
  end

  def show
    @lift_total_detail = LiftTotalDetail.find(params.fetch("id_to_display"))

    render("lift_total_detail_templates/show.html.erb")
  end

  def new_form
    @lift_total_detail = LiftTotalDetail.new

    render("lift_total_detail_templates/new_form.html.erb")
  end

  def create_row
    @lift_total_detail = LiftTotalDetail.new

    @lift_total_detail.lift_total_id = params.fetch("lift_total_id")
    @lift_total_detail.squat = params.fetch("squat")
    @lift_total_detail.bench = params.fetch("bench")
    @lift_total_detail.deadlift = params.fetch("deadlift")

    if @lift_total_detail.valid?
      @lift_total_detail.save

      redirect_back(:fallback_location => "/lift_total_details", :notice => "Lift total detail created successfully.")
    else
      render("lift_total_detail_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @lift_total_detail = LiftTotalDetail.find(params.fetch("prefill_with_id"))

    render("lift_total_detail_templates/edit_form.html.erb")
  end

  def update_row
    @lift_total_detail = LiftTotalDetail.find(params.fetch("id_to_modify"))

    @lift_total_detail.lift_total_id = params.fetch("lift_total_id")
    @lift_total_detail.squat = params.fetch("squat")
    @lift_total_detail.bench = params.fetch("bench")
    @lift_total_detail.deadlift = params.fetch("deadlift")

    if @lift_total_detail.valid?
      @lift_total_detail.save

      redirect_to("/lift_total_details/#{@lift_total_detail.id}", :notice => "Lift total detail updated successfully.")
    else
      render("lift_total_detail_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @lift_total_detail = LiftTotalDetail.find(params.fetch("id_to_remove"))

    @lift_total_detail.destroy

    redirect_to("/lift_total_details", :notice => "Lift total detail deleted successfully.")
  end
end
