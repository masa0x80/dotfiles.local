" clipboard
if has('mac')
  set clipboard+=unnamedplus
endif

call execute('set colorcolumn=' . join(range(81, 9999), ','))
