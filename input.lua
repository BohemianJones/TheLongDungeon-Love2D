input = {}

function input:processInput(key)
print(key)
local keys = global.keyBindings
local actor = global.multiverse[global.currentUniverse].actors[global.currentActor]
function moveleft()
  actor:move(vector(-1,0,0))
end
function moveright()
  actor:move(vector(1,0,0))
end
function moveup()
  actor:move(vector(0,-1,0))
end
function movedown()
  actor:move(vector(0,1,0))
end
function climbup()
  actor:move(vector(0,0,1))
end
function climbdown()
  actor:move(vector(0,0,-1))
end
function stepforward()
end
function stepback()
end
local controls = {["moveleft"]=moveleft,["moveright"]=moveright,["moveup"]=moveup,["movedown"]=movedown,
  ["stepforward"]=stepforward,["stepback"]=stepback,climbup=climbup,climbdown=climbdown}
if keys[key] ~= nil then
  controls[keys[key]]()
end
end