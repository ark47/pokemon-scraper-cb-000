class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(chu, db)
  pika = db.execute("SELECT * FROM pokemon WHERE id = ?", chu).flatten
  Pokemon.new(id: pika[0], name: pika[1], type: pika[2], db: db)
  end

end
