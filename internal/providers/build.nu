use std/dirs


dirs add calc
go build -buildmode=plugin
cp ./calc.so ~/.config/elephant/providers/
dirs drop

dirs add clipboard
go build -buildmode=plugin
cp ./clipboard.so ~/.config/elephant/providers/
dirs drop

dirs add desktopapplications
go build -buildmode=plugin
cp ./desktopapplications.so ~/.config/elephant/providers/
dirs drop

dirs add files
go build -buildmode=plugin
cp ./files.so ~/.config/elephant/providers/
dirs drop

dirs add menus
go build -buildmode=plugin
cp ./menus.so ~/.config/elephant/providers/
dirs drop

dirs add providerlist
go build -buildmode=plugin
cp ./providerlist.so ~/.config/elephant/providers/
dirs drop

dirs add runner
go build -buildmode=plugin
cp ./runner.so ~/.config/elephant/providers/
dirs drop

dirs add todo
go build -buildmode=plugin
cp ./todo.so ~/.config/elephant/providers/
dirs drop

dirs add websearch
go build -buildmode=plugin
cp ./websearch.so ~/.config/elephant/providers/
dirs drop

dirs add windows
go build -buildmode=plugin
cp ./windows.so ~/.config/elephant/providers/
dirs drop

