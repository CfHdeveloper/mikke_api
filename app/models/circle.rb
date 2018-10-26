class Circle < ApplicationRecord
    has_many :circle_genres, dependent: :destroy
    has_many :genres, through: :circle_genres
    enum frequency: {smaller_one: 0, two_or_three:1, greater_four: 2}
 


    def self.search(params)
        order = nil
        puts params
        if params[:order] == "new"
            order = "updated_at ASC"
        elsif params[:order] == "popular"
            order = "views DESC"
        end


        if params[:frequency] and params[:days]
            query = "frecuency = ? AND days = ?"
            query_params = [params[:frecuency], params[:days] ] 
        elsif params[:frecuency]
            query = "frecuency = ?"
            query_params = [params[:frecuency] ] 
        elsif params[:days]
            query = "days = ?"
            query_params = [params[:frecuency] ] 
        else
            query = nil
            query_params =  nil
        end

        if params[:min].nil?
            params[:min] = 0
        end

        if params[:max].nil?
            params[:max] = 100
        end

    

        if params[:genre]
          Circle.find_by_sql(["SELECT circles.*, GROUP_CONCAT(`genres`.`name`) as genre FROM `circles` INNER JOIN `circle_genres` ON `circle_genres`.`circle_id` = `circles`.`id` INNER JOIN `genres` ON `genres`.`id` = `circle_genres`.`genre_id` WHERE (genres.id IN (?))  GROUP By `circle_id` ORDER BY ? LIMIT ?, ?", params[:genre].map!(&:to_i),order, params[:min], params[:max]])
        else
          Circle.where(query, query_params).offset(params[:min]).limit(params[:max]).order(order)
        end
    end
end
