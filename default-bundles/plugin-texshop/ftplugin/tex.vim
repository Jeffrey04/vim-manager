" Run LaTeX through TexShop
" <http://reference-man.blogspot.com/2009/01/vimtexshop-integration.html>
function! SRJ_runLatex()
   if &ft != 'tex'
      echo "calling srj_runLatex from a non-tex file"
      return ''
   end

   "write the file
   :w

   let thePath = getcwd() . '/'. expand("%")

   let execString = 'osascript -e "tell app \"TeXShop\"" -e "set theDoc to open ((POSIX file \"'.thePath.'\") as alias)" -e "tell theDoc to latexinteractive" -e "end tell"'
   exec 'silent! !'.execString
   return ''
endfunction
no  <expr> <D-r> SRJ_runLatex()
vn  <expr> <D-r> SRJ_runLatex()
ino <expr> <D-r> SRJ_runLatex()
