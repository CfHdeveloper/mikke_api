class Circle < ApplicationRecord
    has_many :circle_genres, dependent: :destroy
    has_many :genres, through: :circle_genres
    enum frequency: {smaller_one: 0, two_or_three:1, greater_four: 2}
    scope :regexp_days, -> (pattern){ where("circles.days REGEXP ?", pattern)}

    def self.search(params)

        # order is determined when order is new or popular
        order = nil
        puts params
        if params[:order] == "new"
            order = "circles.updated_at ASC"
        elsif params[:order] == "popular"
            order = "circles.views DESC"
        end

        circles = Circle.where(nil)
        circles = circles.where(frequency: params[:frequency]) if params[:frequency].present?
        if params[:fee].present?
            if params[:fee] == "true"
                circles = circles.where('fee > ?', 0) 
            else 
                circles = circles.where('fee = ?', 0) 
            end
        end
        circles = circles.where(location: params[:location]) if params[:location].present?
        if params[:days].present? 
            days = params[:days].split(//).join("|") # 1文字ずつばらばらにする "013" => "0|1|3"
            circles = circles.regexp_days(days)
        end
        circles = circles.includes(:genres).where(genres: {name: params[:genre]}) if params[:genre].present?
        circles = circles.offset(params[:min]) if params[:min].present?
        circles = circles.limit(params[:max]) if params[:max].present?
        circles = circles.order(order) if order.present?
        circles = circles.where("name LIKE :hoge OR title LIKE :hoge OR description LIKE :hoge", hoge: "\%#{params[:freeword]}\%" )
        
        circles
        
    end

end
