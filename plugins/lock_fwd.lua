local function pre_procces(msg) 
local hash = "mivel:"..msg.to.id 
 
if redis:get(hash) and msg.fwd_from and not is_momod(msg) then 
delete_msg(msg.id,ok_cb,true) 
 
end 
return msg 
end 
 
 
local function run(msg,matches) 
local hash = "mivel:"..msg.to.id 
 
if matches[1] == "قفل التوجيه" and is_momod(msg) then 
redis:set(hash,true)  
return "  done,التوجيــــه بالفعـــل تم #قفـــله|🔐| فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n" 
 
elseif matches[1] == "قفل التوجيه" and not is_momod(msg) then 
return "للمشرفين فقط ❤️✋️" 
end 
 
if matches[1] == "فتح التوجيه" amd is_momod(msg) then 
redis:del(hash) 
return "done,التوجيــــه بالفعـــل تم #فتحـه|🔓| فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n" 
 
elseif matches[1] == "فتح التوجيه" and not is_momod(msg) then 
return "للمشرفين فقط ❤️✋️" 
end 
 
end 
 
return { 
patterns = { 
"^[/#!](قفل التوجيه)$", 
"^[/#!](فتح التوجيه)$" 
}, 
run = run, 
pre_procces = pre_procces 
}