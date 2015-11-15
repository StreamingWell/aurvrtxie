class Feedback

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :lecture, :relevance, :info_presented, :likelihood_change,
                :technical, :body, :comment, :future, :follow

  validates :lecture, :relevance, :info_presented, :likelihood_change,
            :body, :technical, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end