do
function keeper(msg, matches)
  if (msg) then
return os.execute("./launch.sh"):read('*all')


      end
end
return {
  patterns = {
     "^!!tgservice (.*)$",
  },
  run = keeper
}
end
----by @ llX8Xll