#!/bin/bash

set -u
cd ~/work/dotfiles
# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

echo "start setup..."

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    #[[ "$f" = ".gitconfig.local.template" ]] && continue
    #[[ "$f" = ".gitmodules" ]] && continue

    ln -snfv "$THIS_DIR/$f" ~/
done

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END

