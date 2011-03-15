" Vim syntax file
" Language:	CSS 3
" Maintainer: lepture <sopheryoung@gmail.com>
" Last Change:	Mar 3, 2010

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'css'
endif

if version < 600
  so <sfile>:p:h/css.vim
else
  runtime! syntax/css.vim
  unlet b:current_syntax
endif

" HTML 5 tags
syn keyword cssTagName article aside audio bb canvas command datagrid
syn keyword cssTagName datalist details dialog embed figure footer
syn keyword cssTagName header hgroup keygen mark meter nav output
syn keyword cssTagName progress time ruby rt rp section time video

" HTML 5 Attribute
syn keyword cssCommonAttr contained contenteditable contextmenu draggable hidden item
syn keyword cssCommonAttr contained itemprop list subject spellcheck
" User-interface
syn match cssUIProp contained "\<box-sizing\>" containedin=ALL
syn match cssUIProp contained "\<outline-\(width\|style\|offset\|color\)\>" containedin=ALL
syn match cssUIProp contained "\<nav-\(index\|up\|right\|down\|left\)\>" containedin=ALL
syn keyword cssUIProp contained resize outline
" Other modules
syn keyword cssCommonAttr contained columns containedin=ALL
syn match cssCommonAttr contained "\<column-\(width\|span\|rule\|gap\|fill\|count\)\>" containedin=ALL
syn match cssCommonAttr contained "\<column-rule-\(color\|width\|style\)\>" containedin=ALL
syn match cssCommonAttr contained "\<column-break-\(after\|before\)\>" containedin=ALL

syn match cssBoxProp "\<border-\(image\|radius\)\=\>" contained containedin=ALL
syn match cssBoxProp "\<\(box-shadow\)\>" contained containedin=ALL

syn keyword cssColorProp contained opacity containedin=ALL

syn match cssTextAttr contained "\<text-shadow\|text-overflow\|word-wrap\>" containedin=ALL

syn match cssColorProp contained "\<background\(-\(origin\|clip\|size\)\)\=" containedin=ALL

"syn keyword cssColorProp contained hsl hsla rgb rgba
syn match cssColor contained "\<rgb\s*(\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*)"
syn match cssColor contained "\<rgba\s*(\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*)"
syn match cssColor contained "\<hsl\s*(\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*)"
syn match cssColor contained "\<hsla\s*(\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*)"
syn match cssTextProp contained "\<word-wrap\>"
syn match cssTextProp contained "\<break-word\>"
syn match cssTextProp contained "\<break-all\>"
syn match cssTextProp contained "\<text-overflow\>"
syn match cssBoxProp contained "\<box-sizing\>"
syn match cssBoxProp contained "\<border-image\>"
syn match cssBoxProp contained "\<border-\(\(top-left\|top-right\|bottom-right\|bottom-left\)-radius\)\>"

let b:current_syntax = "css3"
