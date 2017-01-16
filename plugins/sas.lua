
do
local function run(msg, matches)

hash = 'bot:help'

if matches[1] == 'setk' or matches[1] == 'ضع مذكره'  then
if not is_sudo(msg) then return end
redis:set(hash,'waiting:'..msg.from.id)
return 'ارســـــل لي |⭕️|المذكـــــره عزيزي لـ إقــوم |🔥|  بحفـظهـــا❤️❗️'
else
if redis:get(hash) == 'waiting:'..msg.from.id then
redis:set(hash,msg.text)
return 'مبروك |❤️| لقــد قمُــت بحفـظ مذكرتـــٰك |😉☝🏽| اذا اردتِ عرضــــهاا ارســــل لـي مذكرتي💋🚶☝🏽'
end
end


if matches[1] == 'sk'or matches[1] == 'مذكرتي'  then
if not is_momod(msg) then return end
return redis:get(hash)
end

end

return {
    patterns = {
        '^(ضع مذكره)$',
       '^(مذكرتي)$',
 
        '(.*)',
    },
    run = run,
    pre_process = pre_process
}
end
-- DEV @deve_poent
-- CH @DEV_s_o القناة
