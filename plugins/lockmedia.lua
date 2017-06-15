--[[ 
قفل الوسائط 
@llX8Xll
—]] 
do 

local function pre_process(msg) 
local mohammed = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local moody = 'mate:'..msg.to.id 
    if redis:get(moody) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = "#ممنوع ارسال الوسائط  🚩داخل هاذه المجموعه 🏌🏿".."\n\n".." 🚸 User : @"..(msg.from.username or " ") 
reply_msg(mohammed, test, ok_cb, true) 

end 

        return msg 
    end 

local function keeper(msg, matches) 
local mohammed = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local th3boss= 'mate:'..msg.to.id 
                    redis:set(th3boss, true) 
local boss = 'تـــم بالفعـــل #قفــل |🔐| الوسائـــــط فــي 🕵🏻 هذه المجموعـةة❤️❗️ \n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local moody = 'للمہشہرفہيہنہ 🕵🏻 فہقہطہ عہزيہزيہ♥️❗️' 
reply_msg(mohammed, moody, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local th3boss= 'mate:'..msg.to.id 
      redis:del(th3boss) 
local boss = 'تـــم بالفعـــل #فتـح |🔓| الوسائـــــط فــي 🕵🏻 هذه المجموعـةة❤️❗️ \n🔲♦️Us : @'..(msg.from.username or " لآ يہؤجہد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local moody= ' للمہشہرفہيہنہ 🕵🏻 فہقہطہ عہزيہزيہ♥️❗️ ' 
reply_msg(mohammed, moody, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = keeper, 
    pre_process = pre_process 
} 

end