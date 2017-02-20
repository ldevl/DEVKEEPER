--[[ 
--@keeper_ch
--]] 
do 

local function pre_process(msg) 
    local hash = 'mate:'..msg.to.id 
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then 
            delete_msg(msg.id, ok_cb, true) 
send_large_msg(get_receiver(msg), '#تنبيــــــــهْ 🗣 اعــادة التوجيــه مغــلقه حالـياً داخل هذه المجموعــه🕴🏾\n🔴 User @'..msg.from.username)
            return "ok"
end
        return msg
    end

local function keeper(msg, matches) 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل التوجيه' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return ''
  elseif is_momod(msg) and matches[1] == 'فتح التوجيه' then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      return ''
end 

end 

return { 
    patterns = { 
        '^(قفل التوجيه)$', 
        '^(فتح التوجيه)$', 
        '^[/!#](قفل التوجيه)$', 
        '^[/!#](فتح التوجيه)$' 
    }, 
run = keeper, 
pre_process = pre_process 
} 
end 

--[[ 
--]]
