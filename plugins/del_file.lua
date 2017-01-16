function keeper(msg, matches)
text = io.popen("cd plugins && rm -rf  ".. matches[1]..".lua"):read('*all')
  return ' تـــــم بالفعلُِ🤚🏾 حذف الملـــ📙ــف '
end
return {
  patterns = {
    "^حذف ملف (.*)$"
  },
  run = keeper,
  moderated = true
}
----by @llX8Xll