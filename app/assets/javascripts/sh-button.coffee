$(".sh-button-popup").click ->
  width = 640
  height = 480
  left = (screen.width / 2) - (width / 2)
  top = (screen.height * 0.3) - (height / 2)
  opt = "width=#{width},height=#{height},left=#{left},top=#{top},menubar=no,status=no,location=no"
  window.open($(this).attr("href"), 'popup', opt)
  false