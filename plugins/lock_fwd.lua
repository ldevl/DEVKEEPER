local function pre_process(msg) 
  local jalal = msg['id']
  local user = msg.from.id
  local chat = msg.to.id
  local hash = 'mate:'..chat..':'..user
  if msg.fwd_from and not is_momod(msg) then
    if redis:get(hash) and msg.fwd_from and not is_momod(msg) then 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      send_large_msg(get_receiver(msg), '#تنبيــــــــهْ 🗣 اعــادة التوجيــه مغــلقه حالـياً داخل هذه المجموعــه🕴🏾\n🔴 User @'..msg.from.username)
      redis:del(hash) 
   else
      delete_msg(msg.id, ok_cb, false) 
      redis:set(hash, true)
    end
  end
  return  msg
end
       

local function run(msg, matches) 
  local jalal = msg['id'] 
  if matches[1] == 'قفل التوجيه' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:set(hash, true) 
         local x = 'التوجيــــه بالفعـــل تم #قفـــله|🔐| فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
      reply_msg(jalal, x, ok_cb, true) 
    else 
      local asdy = 'للمشرفين فقط ❤️☝🏽️' 
      reply_msg(jalal, asdy, ok_cb, true) 
    end
  end
  if matches[1] == 'فتح التوجيه' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
    local don = 'التوجيــــه بالفعـــل تم #فتحـه|🔓| فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
      reply_msg(jalal, don, ok_cb, true) 
    else
      local jalal_aldon = 'للمشرفين فقط ❤️☝🏽️' 
      reply_msg(jalal, jalal_aldon, ok_cb, true) 
    end 
  end 
end
return { 
    patterns = {
"^(قفل التوجيه)$",
"^(فتح التوجيه)$"
    }, 
     
run = run, 
    pre_process = pre_process 
}