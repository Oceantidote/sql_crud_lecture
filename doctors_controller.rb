require_relative "doctor"

class DoctorsController
  def initialize(db)
    @db = db
    @db.results_as_hash = true
  end

  def show(id)
    @db.execute("SELECT * FROM doctors WHERE id = #{id}")
  end

  def index
    @db.execute('SELECT * FROM doctors')
  end

  def create(name,age,specialty)
    @db.execute("INSERT INTO doctors (name, age, specialty) VALUES ('#{name}', '#{age}', '#{specialty}')")
  end

  def update(id,name,age,specialty)
    @db.execute("UPDATE doctors SET age = #{age}, name = '#{name}', specialty = '#{specialty}' WHERE id = #{id}")
  end

  def delete(id)
    @db.execute("DELETE FROM doctors WHERE id = #{id}")
  end
end

