--[[ 
----- (منع والغاء منع الكلمات)
---admin @llX8Xll
--]]
local function addword(msg, name)
    local hash = 'chat:'..msg.to.id..':badword'
    redis:hset(hash, name, 'newword')
    return "تــٰم بالفعـــل ☑️ اضافــةة كلمـٰه 🗓 جديده آلى قائمــةة المنـٰـع❌♥️❗️\n>"..name
end

local function get_variables_hash(msg)

    return 'chat:'..msg.to.id..':badword'

end 

local function list_variablesbad(msg)
  local hash = get_variables_hash(msg)

  if hash then
    local names = redis:hkeys(hash)
local text = 'قائمـــٰة📝 منع الكلمــٰات المحظـٰٰـوره❌❤️❗️ :\n\n'
    for i=1, #names do
      text = text..'> '..names[i]..'\n'
    end
    return text
 else
 return 
  end
end

function clear_commandbad(msg, var_name)
  --Save on redis  
  local hash = get_variables_hash(msg)
  redis:del(hash, var_name)
  return 'تـٰٰم بالفعــــــل ☑️ تنظيـٰــــٰف قائمــــة 📝 المنـع في المجموعـــٰةة♥️‼️'
end

local function list_variables2(msg, value)
  local hash = get_variables_hash(msg)
  
  if hash then
    local names = redis:hkeys(hash)
    local text = ''
    for i=1, #names do
 if string.match(value, names[i]) and not is_momod(msg) then
 if msg.to.type == 'channel' then
 delete_msg(msg.id,ok_cb,false)
 else
 kick_user(msg.from.id, msg.to.id)

 end
return 
end
      --text = text..names[i]..'\n'
    end
  end
end
local function get_valuebad(msg, var_name)
  local hash = get_variables_hash(msg)
  if hash then
    local value = redis:hget(hash, var_name)
    if not value then
      return
    else
      return value
    end
  end
end
function clear_commandsbad(msg, cmd_name)
  --Save on redis  
  local hash = get_variables_hash(msg)
  redis:hdel(hash, cmd_name)
  return ''..cmd_name..' بالفعـــــل ☑️ تم الغائها 👍 من قائمـٰـٰٰـةة 📝 المنــع💛‼️ '
end

local function run(msg, matches)
  if matches[2] == 'منع' then
  if not is_momod(msg) then
   return 'للمشرفيـــــــن 🕵🏻  فـقــط عزيـــزي♥️❗️'
  end
  local name = string.sub(matches[3], 1, 50)

  local text = addword(msg, name)
  return text
  end
  if matches[2] == 'قائمه المنع' then
  return list_variablesbad(msg)
  elseif matches[2] == 'تنظيف قائمه المنع' then
if not is_momod(msg) then return '_|_' end
  local asd = '1'
    return clear_commandbad(msg, asd)
  elseif matches[2] == 'الغاء منع' or matches[2] == 'rw' then
   if not is_momod(msg) then return '_|_' end
    return clear_commandsbad(msg, matches[3])
  else
    local name = user_print_name(msg.from)
  
    return list_variables2(msg, matches[1])
  end
end

return {
  patterns = {
  "^()(rw) (.*)$",
  "^()(منع) (.*)$",
   "^()(الغاء منع) (.*)$",
    "^()(قائمه المنع)$",
    "^()(تنظيف قائمه المنع)$",
"^(.+)$",
    
  },
  run = run
}