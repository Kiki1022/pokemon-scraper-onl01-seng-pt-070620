require 'pry'
class Pokemon

  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokeman(id:,name:, type:)
      VALUES (?,?,?)
      SQL
      DB[:conn].execute(sql, self.name, self.type)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokeman")[0][0]
  end












end
