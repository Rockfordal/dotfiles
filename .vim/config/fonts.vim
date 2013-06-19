if has("win32")
  set gfn=Bitstream_Sans_Mono_for_Powerline:h16:cANSI
  au GUIEnter * simalt ~x

elseif has("mac")
  set gfn=Terminus\ (ttf)\ For\ Powerline:h19
  " set gfn=Neep:h15
  " set gfn=Meslo\ LG\ S\ DZ\ for\ Powerline:h16
  " set gfn=Ubuntu\ Mono\ derivative\ Powerline:h19
  " set gfn=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h16
  " set gfn=Anonymous\ Pro\ for\ Powerline:h19
  " set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h16
  " set gfn=Inconsolata:h16
  " set gfn=Menlo:h14"
  " set gfn=M+\ 1m:h16
  " set gfn=Source\ Code\ Pro:h13
  " set gfn=Inconsolata-dz\ for\ Powerline\ 13
  " set gfn=Menlo\ for\ Powerline\ 13
  " set gfn=Monospace\ 13
  " set gfn=Envy\ Code\ R\ 13
elseif has("unix")
  set gfn=Neep\ 15
  set gfn=Terminus\ For\ Powerline\ 14
  " set gfn=Andale\ Mono\ 16
  " set gfn=Meslo\ LG\ M\ DZ\ for\ Powerline\ 14
  " set gfn=Ubuntu\ Mono\ Regular\ 16
  " set gfn=Meslo\ LG\ M\ for\ Powerline\ 15
  " set gfn=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline\ 15
  " set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ 15
  " set gfn=M+\ 1m\ 16
  " set gfn=Menlo\ for\ Powerline\ 13
  " set gfn=Inconsolata-dz\ for\ Powerline\ 13
  " set gfn=Monospace\ 13
  " set gfn=Envy\ Code\ R\ 13
endif
