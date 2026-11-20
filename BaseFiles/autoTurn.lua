function onObjectLeaveContainer(cont,obj)
 if cont!=self then return end
 Wait.frames(function()rotCounter(obj)end,1)
end

function rotCounter(obj)
 if obj.held_by_color then
  local rot=Player[obj.held_by_color].getPointerRotation()
  obj.setRotation({0,rot,0})
  obj.held_spin_index=math.floor(rot/15+0.5)
 end
end
