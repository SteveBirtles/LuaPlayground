

Cake = {flavour = 'Vanilla', topping = 'Icing', filling = 'Butter Cream' }

function Cake:new()
    self = {}
    local prototype = {__index = Cake}
    setmetatable(self, prototype)
    return self
end


function Cake:describe()
    return self.flavour .. ' Cake with ' .. self.topping .. ' on top and ' .. self.filling .. ' inside.'
end


choccycake = Cake:new()
choccycake.topping = "Chocolate Frosting"
print (choccycake:describe())

Cake.filling = "Jam"

coffeecake = Cake:new{}
coffeecake.flavour = "Coffee"
print (coffeecake:describe())

print (choccycake:describe())




