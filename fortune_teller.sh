function show_fortunes {
  bat ~/.fortunelog.txt
}

function fortune_logger {
  fortune | sed -e '$a \ ' -e '$a \ ' | tee -a ~/.fortunelog.txt | cowsay
}


fortune_logger
export show_fortunes
