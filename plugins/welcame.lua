do
    
local function mohammedboss(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return "𖥞 نٰٰـورتُِ 〘 "..username.." 〙\n‏𖥞[اُضـغط هنـُٰا مـٰن فـضلكٌ](https://telegram.me/llX8Xll)"
    elseif matches[1] == "chat_add_user_link" then
      return "𖥞 نٰٰـورتُِ 〘 "..username.." 〙\n‏𖥞[اُضـغط هنـُٰا مـٰن فـضلكٌ](https://telegram.me/llX8Xll)"

    end
    if matches[1] == "chat_del_user" then
    return "الله الله الله ويـــــاك 😽 حياتي🔺 لا تنســى ســُد الباب ⛹🏿‍♀️وراك الجوو حيل بارد 😸❤️❗️"..msg.action.user.first_name
end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$"
       
    },
 run = mohammedboss,
}
end
