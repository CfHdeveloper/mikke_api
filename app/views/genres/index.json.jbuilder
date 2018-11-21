json.array! @genres do |g|
    json.merge! g.attributes
    json.circles  g.circles.count
end