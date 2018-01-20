" vivid#getWindowList:
"  return Dictionary Type.
"    key is window number(String), and value is buffer number(String).
function! vivid#getWindowList() abort
    let res = {}

    for i in range(1, winnr('$'))
        let res[i] = winbufnr(i)
    endfor

    return res
endfunction
