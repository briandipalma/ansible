" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Only lint with ESLint and TS
let b:ale_linters = ['eslint', 'tsserver']
