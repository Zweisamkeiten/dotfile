function! initself#source_file(root_path,path, ...)
        " Source user configuration files with set/global sensitivity
        let use_global = get(a:000, 0, ! has('vim_starting'))
        let abspath = resolve(a:root_path . '/' . a:path)
        if ! use_global
                execute 'source' fnameescape(abspath)
                return
        endif

        let tempfile = tempname()
        let content = map(readfile(abspath),
                \ "substitute(v:val, '^\\W*\\zsset\\ze\\W', 'setglobal', '')")
        try
                call writefile(content, tempfile)
                execute printf('source %s', fnameescape(tempfile))
        finally
                if filereadable(tempfile)
                        call delete(tempfile)
                endif
        endtry
endfunction
