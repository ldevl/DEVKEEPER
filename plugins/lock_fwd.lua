do
local function pre_process(msg)

    local fwd = 'mate:'..msg.to.id
    if redis:get(fwd) and not is_momod(msg) and msg.fwd_from then
            delete_msg(msg.id, ok_cb, true)
            send_large_msg(get_receiver(msg), '#ممـــنوع 💢 التوجــيه عزيزيْ💬\n\n🚸 User @'..msg.from.username)
            return "ok"
end
        return msg
    end
    
 local function keeper(msg, matches)
     chat_id = msg.to.id
local reply_id = msg['id']
     if is_momod(msg) and matches[1]== 'قفل' and matches[2]== 'التوجيه' then
         local fwd = 'mate:'..msg.to.id
         redis:set(fwd, true)
         local text = 'التوجيــــه بالفعـــل تم #قفـــله|🔐| فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
         return reply_msg(reply_id, text, ok_cb, false)
         end
local reply_id = msg['id']
    if not is_momod(msg) and matches[1]== 'قفل' and matches[2]== 'التوجيه' then
    local text= 'للـمـشـرفـيـن فـقـط ✍🏾🖕🏿'
 return reply_msg(reply_id, text, ok_cb, false)
end
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'فتح' and matches[2]== 'التوجيه' then
    local fwd = 'mate:'..msg.to.id
    redis:del(fwd)
    local text = 'التوجيــــه بالفعـــل تم #فتحــه|🔓| فــي المجموعـــــةة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
    return reply_msg(reply_id, text, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'فتح' and matches[2]== 'التوجيه' then
local text= ' للـمـشـرفـيـن فـقـط ✍🏾🖕🏿'
 return reply_msg(reply_id, text, ok_cb, false)
 end

end
return {
    patterns ={
        '^(قفل) (التوجيه)$',
        '^(فتح) (التوجيه)$'
    },
run = keeper,
pre_process = pre_process 
}
end