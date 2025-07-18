class JournalEntry
  attr_accessor :title, :body, :created_at

  def initialize(title, body)
    @title = title
    @body = body
    @created_at = Time.now
  end
end