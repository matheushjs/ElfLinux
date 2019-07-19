syn keyword Type		enum_t
syn keyword Type		int8 int16 int32 int64
syn keyword Type		uint8 uint16 uint32 uint64
syn keyword Type		vector unordered_map string queue map list array deque tuple pair set unordered_set stack priority_queue
syn keyword Type		istream ostream ofstream ifstream fstream
syn keyword Type		thread mutex lock_guard condition_variable
syn keyword Type		shared_ptr unique_ptr weak_ptr

" \< matches "begin of word" and "\>" matches "end of word". VERY USEFUL! http://vimdoc.sourceforge.net/htmldoc/pattern.html#pattern
syn match elfObject "\<[A-Z][[:alpha:]]\+\>"

syn match elfBlock "::"
syn match elfNamespace "\([a-zA-Z][[:alnum:]]*\)::" contains=elfBlock

hi def link elfNamespace	Statement
hi def link elfObject	Type
