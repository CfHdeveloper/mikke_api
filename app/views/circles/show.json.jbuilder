json.merge! @circle.attributes
json.genres do
   json.array! @genres, :name
end