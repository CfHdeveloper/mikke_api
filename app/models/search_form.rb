class SearchForm
    include ActiveModel::Model, ActiveModel::Serialization, ActiveModel::Validations

    attr_accessor :days, :frequency, :min, :max, :order, :genre, :fee
    validates :frequency, inclusion: { in: Circle.frequencies.keys }, allow_nil: true
    validates :order, inclusion: { in: %w(new popular)}, allow_nil: true
    validates :fee, inclusion: {in: [true, false]}, allow_nil: true
    

    def attributes
        {days: nil, frequency: nil, min: 0, max:100, order:"new", genre:nil, fee:nil }
    end

end
