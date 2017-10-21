--[[
----admin @llX8Xll
—]]
do 

local function keeper(msg, matches) 
local reply_id = msg ['id']
if ( msg.text ) then

  if ( msg.to.type == "user" ) then

    local text = "نورت/ي عزيزي♥️❗️ @"..msg.from.username..'\n\n♦️انت/يْ بالفعــــل تتحدٌث 🗣 مہعہ البــــوت ✔️♥️❗️ \n\n♦️ للتحدث مہٰع المطور 🕵 \n\n♦️ @karrar_adnan 💔\n\n♦️آذآ كنــتٰ محظور 🗣 تعـٰال هنــاا حبيــبي💋 @lqlxlqlbot\n\n♦️ ♥️❗️قہنہآه👨🏿‍💻 آلسہؤرسہ ςђ @keeper_ch\n\n♦️ قہنہآه 🗣  تابعـــةة للمطور🕵🏾 يہرجہآ الاشتراك @llX8Xll  🍾🍷\n'     reply_msg(reply_id, text, ok_cb, false)
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
