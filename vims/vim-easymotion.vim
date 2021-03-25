map <leader> <plug>(easymotion-prefix)

augroup easymotionBug
  au!
  au User EasyMotionPromptBegin silent! CocDisable
  au User EasyMotionPromptEnd silent! CocEnable 
augroup END
