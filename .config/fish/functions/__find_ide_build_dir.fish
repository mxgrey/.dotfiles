function __find_ide_build_dir --on-variable PWD
  string match -q $HOME'/projects/*' $PWD
  if test $status -eq 0
    set -gx IDE_BUILD_DIR $HOME/projects/(string match -rg $HOME'/projects/([^/]*).*' $PWD)/build/ide
  else
    set -gx IDE_BUILD_DIR $PWD/build/ide
  end
end
