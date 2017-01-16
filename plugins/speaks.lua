--[[
----admin @llX8Xll
—]]
do 

local function keeper(msg, matches) 
local reply_id = msg ['id']
if ( msg.text ) then

  if ( msg.to.type == "user" ) then

    local text = "نورت/ي عزيزي♥️❗️ @"..msg.from.username..'\n\nانت/يْ بالفعــــل تتحدٌث 🗣 مہعہ البــــوت ✔️♥️❗️ \n\n للتحدث مہٰع المطور 🕵 \n\n @llX8Xll 💔\n\nآذآ كنــتٰ محظور 🗣 تعـٰال هنــاا حبيــبي💋 @llX8Xllbot\n\n♥️❗️قہنہآه👨🏿‍💻 آلسہؤرسہ ςђ @DEV_KEEPER_NEW\n\nقہنہآه 🗣  تابعـــةة للمطور🕵🏾 يہرجہآ الاشتراك @xx_KR_HM_xx  🍾🍷\n'     reply_msg(reply_id, text, ok_cb, false)
  end 
   
end 

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = keeper, 
} 

end