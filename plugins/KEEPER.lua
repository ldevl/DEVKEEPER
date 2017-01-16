----(ردود عشوائية)
---ch( @DEV_KEEPER_NEW )
---admin( @llX8Xll )
do

function run(msg, matches)
  local tshake = {'كہؤل حہيہــ{@DEV_KEEPER_NEW}ـآتہيہ آمہرنہيہ☺️♥️❗️','آيہ كہيـــ{@DEV_KEEPER_NEW}ــہبہر✋️ تہفہظہل😻💛❗️','خہيہر يہآطــــٰ{@DEV_KEEPER_NEW}ـہيہر😼🤹🏿‍♂️❗️','هہآ يہــ{@DEV_KEEPER_NEW}ـــرؤحہ كہيہبہر😍💛‼️',' نہعہمہ عہيٰٰـــ{@DEV_KEEPER_NEW}ـــہؤنہيہ😽✌️',' هہآ كہـــ{@DEV_KEEPER_NEW}ــــبہد بہد غہرد😻👍'}
  return tshake[math.random(#tshake)]
end

return {
  description = "tshake face",
  usage = "send tshake random  ",
  patterns = {"كيبر"},
  run = run
}

end
--dev : @llX8Xll