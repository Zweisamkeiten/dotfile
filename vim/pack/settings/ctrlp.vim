"
" Ctrlp
"
"基本用法

" :CtrlP或者 :CtrlP [starting-directory]在查找文件模式下调用 CtrlP。
" :CtrlPBuffer或者 :CtrlPMRU在查找缓冲区或查找 MRU 文件模式中调用 CtrlP。
" :CtrlPMixed同时搜索文件、缓冲区和 MRU 文件。
"
"查看 :help ctrlp-commands和 :help ctrlp-extensions对于其他命令。
"一旦 CtrlP 打开：
"
"    按 <F5>清除当前目录的缓存以获取新文件，删除已删除的文件并应用新的忽略选项。
"    按 <c-f>和 <c-b>在模式之间循环。
"    按 <c-d>切换到仅文件名搜索而不是完整路径。
"    按 <c-r>切换到正则表达式模式。
"    利用 <c-j>, <c-k>或箭头键导航结果列表。
"    利用 <c-t>或者 <c-v>, <c-x>在新选项卡或新拆分中打开所选条目。
"    利用 <c-n>, <c-p>选择提示历史记录中的下一个/上一个字符串。
"    利用 <c-y>创建一个新文件及其父目录。
"    利用 <c-z>标记/取消标记多个文件和 <c-o>打开它们。
"
" :help ctrlp-mappings或提交 ?在 CtrlP 中获取更多映射帮助。
"
"    提交两个或更多点 ..向上一级或多级目录树。
"    以冒号结束输入字符串 :然后是在打开的文件上执行它的命令： 采用 :25跳到第 25 行。 采用 :diffthis打开多个文件运行时 :diffthis在前 4 个文件上。

let g:ctrlp_map = '' " disable c-p maping, and next line also map cmd to this keybind
let g:ctrlp_cmd = 'Ctrlp'

let g:ctrlp_prompt_mappings = {
  \ 'PrtBS()':              ['<bs>', '<c-]>'],
  \ 'PrtDelete()':          ['<del>'],
  \ 'PrtDeleteWord()':      ['<c-w>'],
  \ 'PrtClear()':           ['<c-u>'],
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
  \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
  \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
  \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
  \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
  \ 'PrtHistory(-1)':       ['<c-j>'],
  \ 'PrtHistory(1)':        ['<c-k>'],
  \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
  \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
  \ 'AcceptSelection("t")': ['<c-t>'],
  \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
  \ 'ToggleFocus()':        ['<s-tab>'],
  \ 'ToggleRegex()':        ['<c-r>'],
  \ 'ToggleByFname()':      ['<c-d>'],
  \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
  \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
  \ 'PrtExpandDir()':       ['<tab>'],
  \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
  \ 'PrtInsert()':          ['<c-\>'],
  \ 'PrtCurStart()':        ['<c-a>'],
  \ 'PrtCurEnd()':          ['<c-e>'],
  \ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
  \ 'PrtCurRight()':        ['<c-l>', '<right>'],
  \ 'PrtClearCache()':      ['<F5>'],
  \ 'PrtDeleteEnt()':       ['<F7>'],
  \ 'CreateNewFile()':      ['<c-y>'],
  \ 'MarkToOpen()':         ['<c-z>'],
  \ 'OpenMulti()':          ['<c-o>'],
  \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
  \ }


let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
