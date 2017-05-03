class TestimonialsController < ApplicationController

  def index
    @testimonials = Entry.where(category: "testimonial")
  end
end
