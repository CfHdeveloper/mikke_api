class SearchForm
    include ActiveModel::Model, ActiveModel::Serialization, ActiveModel::Validations

    attr_accessor :days, :frequency, :min, :max, :order, :genre, :fee, :location, :freeword
    validates :frequency, inclusion: { in: Circle.frequencies.keys }, allow_nil: true
    validates :order, inclusion: { in: %w(new popular)}, allow_nil: true
    validates :fee, inclusion: {in: ["true", "false"]}, allow_nil: true
    # TODO min max のvalidate
    

    def attributes
        {days: nil, frequency: nil, min: nil, max:nil, order:"new", genre:nil, fee:nil, location:nil, freeword:nil }
    end

end