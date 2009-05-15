if not exist logo.pdf asy -noV -tex xelatex -f pdf logo.asy
for %%I in (*.asy) do (
  if not exist %%~nI.pdf (
    asy -noV -tex xelatex -f pdf -noprc -render=0 %%I
  )
)
xelatex main
xelatex main