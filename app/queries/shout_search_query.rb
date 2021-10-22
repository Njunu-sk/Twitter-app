class ShoutSearchQuery
  attr_reader :term

  def initialize(term:)
    @term = term
  end

  def to_relation
    Shout.joins("LEFT JOIN text_shouts ON content_type = 'TextShout' AND content_id = text_shouts.id")
                          .where("text_shouts.body LIKE?", "%#{term}%")
  end
end
