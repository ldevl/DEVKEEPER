----(ردود عشوائية)
---ch( @keeper_ch )
---admin( @llX8Xll )
do

function run(msg, matches)
  local tshake = {'كہؤل حہيہــ{@keeper_ch}ـآتہيہ آمہرنہيہ☺️♥️❗️','آيہ كہيـــ{@keeper_ch}ــہبہر✋️ تہفہظہل😻💛❗️','خہيہر يہآطــــٰ{@keeper_ch}ـہيہر😼🤹🏿‍♂️❗️','هہآ يہــ{@keeper_ch}ـــرؤحہ كہيہبہر😍💛‼️',' نہعہمہ عہيٰٰـــ{@keeper_ch}ـــہؤنہيہ😽✌️',' هہآ كہـــ{@keeper_ch}ــــبہد بہد غہرد😻👍'}
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
