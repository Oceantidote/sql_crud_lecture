class Doctor
  attr_reader :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @specialty = attributes[:specialty]
    # TODO: store other attributes as instanced variable (exercise)
  end
end
