class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ['Iri', 'Toni', 'Leon', 'Bianca', 'Andre']
    search = params[:member]
    if search.present?
      @members = @members.select { |member| member.downcase == search.downcase }
    end
  end

  def home
  end
end
