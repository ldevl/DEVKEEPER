do
local function pre_process(msg) 
local r = get_receiver(msg) 
local debye = 'debye_fwd:'..msg.to.id
local debye2 = 'debye2_fwd:'..msg.to.id
local debye3 = 'debye3_fwd:'..msg.to.id
local user = msg.from.id
local chat = msg.to.id
if redis:get(debye) and not is_momod(msg) and msg.fwd_from then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(debye2) and not is_momod(msg) and msg.fwd_from then
delete_msg(msg.id, ok_cb, true)
send_large_msg(get_receiver(msg), '#تنبيـــــه 🗣اعــادة توجـــــــــيه مغلقــــه داخـــل |⭕️| المجموعــــــةة\nكــــ{📢}ـــافي يـــــا مــ🐴ــــطـي :: @'..msg.from.username)
elseif redis:get(debye3) and not is_momod(msg) and msg.fwd_from then
delete_msg(msg.id, ok_cb, false)
 kick_user(user, chat)
       return "done"
       end
   return msg
 end
    
    
local function debye(msg, matches) 
    local debye = msg['id'] 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == '' and matches[2]== '' then
    local debye = 'debye_fwd:'..msg.to.id 
    redis:set(debye, true)
    local text = ''
    return reply_msg(msg.id, text, ok_cb, false)
    
 elseif is_momod(msg) and matches[1] == '' and matches[2]== '' then
    local debye = 'debye_fwd:'..msg.to.id 
    redis:del(debye)
    local text = ''
    return reply_msg(msg.id, text, ok_cb, false)   
end
if is_momod(msg) and matches[1] == 'قفل' and matches[2]== 'التوجيه' then
    local debye2 = 'debye2_fwd:'..msg.to.id 
    redis:set(debye2, true)
    local text = 'التوجيــــه بالفعـــل تم #قفُــــله🔐 فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
    return reply_msg(msg.id, text, ok_cb, false)
    
 elseif is_momod(msg) and matches[1] == 'فتح' and matches[2]== 'التوجيه' then
    local debye2 = 'debye2_fwd:'..msg.to.id 
    redis:del(debye2)
    local text = 'التوجيــــه بالفعـــل  تم #فتحــه🔓 فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
    return reply_msg(msg.id, text, ok_cb, false)   
end
if is_momod(msg) and matches[1] == 'طرد' and matches[2]== 'التوجيه' then
    local debye3 = 'debye3_fwd:'..msg.to.id 
    redis:set(debye3, true)
    local text = 'التوجيــــه #بالطـــــــرد تم تفعيــــــــله✅ فــي المجموعـــــةة♥️❗️'
    return reply_msg(msg.id, text, ok_cb, false)
    
 elseif is_momod(msg) and matches[1] == 'فتح طرد' and matches[2]== 'التوجيه' then
    local debye3 = 'debye3_fwd:'..msg.to.id 
    redis:del(debye3)
    local text = 'التوجيــــه #بالطُـــــــــرد تم تعطيـــُــله❎ فــي المجموعـــــةة♥️❗️'
    return reply_msg(msg.id, text, ok_cb, false)
end
end
return {
    patterns = {
        '^() ()$',
        '^() ()$',
        '^(قفل) (التوجيه)$',
        '^(فتح) (التوجيه)$',
        '^(طرد) (التوجيه)$',
        '^(فتح طرد) (التوجيه)$',
    },
    run = debye,
    pre_process = pre_process
}
end
