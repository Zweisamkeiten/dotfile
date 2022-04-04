" Set main configuration directory as parent directory
let $PLUG_SETTINGS_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h')

call initself#source_file($PLUG_SETTINGS_PATH,'settings/ctrlp.vim')
call initself#source_file($PLUG_SETTINGS_PATH,'settings/nerdtree.vim')
call initself#source_file($PLUG_SETTINGS_PATH,'settings/easymotion.vim')
