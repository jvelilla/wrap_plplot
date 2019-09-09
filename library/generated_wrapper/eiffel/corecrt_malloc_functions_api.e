note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class CORECRT_MALLOC_FUNCTIONS_API


feature -- Access

	calloc_base (count: INTEGER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _calloc_base ((size_t)$count, (size_t)$size);
			]"
		end

	calloc (count: INTEGER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return calloc ((size_t)$count, (size_t)$size);
			]"
		end

	callnewh (size: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _callnewh ((size_t)$size);
			]"
		end

	expand (block: POINTER; size: INTEGER): POINTER 
		do
			Result := c_expand (block, size)
		end

	free_base (block: POINTER) 
		do
			c_free_base (block)
		end

	free (block: POINTER) 
		do
			c_free (block)
		end

	malloc_base (size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _malloc_base ((size_t)$size);
			]"
		end

	malloc (size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return malloc ((size_t)$size);
			]"
		end

	msize_base (block: POINTER): INTEGER 
		do
			Result := c_msize_base (block)
		end

	msize (block: POINTER): INTEGER 
		do
			Result := c_msize (block)
		end

	realloc_base (block: POINTER; size: INTEGER): POINTER 
		do
			Result := c_realloc_base (block, size)
		end

	realloc (block: POINTER; size: INTEGER): POINTER 
		do
			Result := c_realloc (block, size)
		end

	recalloc_base (block: POINTER; count: INTEGER; size: INTEGER): POINTER 
		do
			Result := c_recalloc_base (block, count, size)
		end

	recalloc (block: POINTER; count: INTEGER; size: INTEGER): POINTER 
		do
			Result := c_recalloc (block, count, size)
		end

	aligned_free (block: POINTER) 
		do
			c_aligned_free (block)
		end

	aligned_malloc (size: INTEGER; alignment: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _aligned_malloc ((size_t)$size, (size_t)$alignment);
			]"
		end

	aligned_offset_malloc (size: INTEGER; alignment: INTEGER; offset: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _aligned_offset_malloc ((size_t)$size, (size_t)$alignment, (size_t)$offset);
			]"
		end

	aligned_msize (block: POINTER; alignment: INTEGER; offset: INTEGER): INTEGER 
		do
			Result := c_aligned_msize (block, alignment, offset)
		end

	aligned_offset_realloc (block: POINTER; size: INTEGER; alignment: INTEGER; offset: INTEGER): POINTER 
		do
			Result := c_aligned_offset_realloc (block, size, alignment, offset)
		end

	aligned_offset_recalloc (block: POINTER; count: INTEGER; size: INTEGER; alignment: INTEGER; offset: INTEGER): POINTER 
		do
			Result := c_aligned_offset_recalloc (block, count, size, alignment, offset)
		end

	aligned_realloc (block: POINTER; size: INTEGER; alignment: INTEGER): POINTER 
		do
			Result := c_aligned_realloc (block, size, alignment)
		end

	aligned_recalloc (block: POINTER; count: INTEGER; size: INTEGER; alignment: INTEGER): POINTER 
		do
			Result := c_aligned_recalloc (block, count, size, alignment)
		end

feature -- Externals

	c_expand (block: POINTER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _expand ((void*)$block, (size_t)$size);
			]"
		end

	c_free_base (block: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				_free_base ((void*)$block);
			]"
		end

	c_free (block: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				free ((void*)$block);
			]"
		end

	c_msize_base (block: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _msize_base ((void*)$block);
			]"
		end

	c_msize (block: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _msize ((void*)$block);
			]"
		end

	c_realloc_base (block: POINTER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _realloc_base ((void*)$block, (size_t)$size);
			]"
		end

	c_realloc (block: POINTER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return realloc ((void*)$block, (size_t)$size);
			]"
		end

	c_recalloc_base (block: POINTER; count: INTEGER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _recalloc_base ((void*)$block, (size_t)$count, (size_t)$size);
			]"
		end

	c_recalloc (block: POINTER; count: INTEGER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _recalloc ((void*)$block, (size_t)$count, (size_t)$size);
			]"
		end

	c_aligned_free (block: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				_aligned_free ((void*)$block);
			]"
		end

	c_aligned_msize (block: POINTER; alignment: INTEGER; offset: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _aligned_msize ((void*)$block, (size_t)$alignment, (size_t)$offset);
			]"
		end

	c_aligned_offset_realloc (block: POINTER; size: INTEGER; alignment: INTEGER; offset: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _aligned_offset_realloc ((void*)$block, (size_t)$size, (size_t)$alignment, (size_t)$offset);
			]"
		end

	c_aligned_offset_recalloc (block: POINTER; count: INTEGER; size: INTEGER; alignment: INTEGER; offset: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _aligned_offset_recalloc ((void*)$block, (size_t)$count, (size_t)$size, (size_t)$alignment, (size_t)$offset);
			]"
		end

	c_aligned_realloc (block: POINTER; size: INTEGER; alignment: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _aligned_realloc ((void*)$block, (size_t)$size, (size_t)$alignment);
			]"
		end

	c_aligned_recalloc (block: POINTER; count: INTEGER; size: INTEGER; alignment: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _aligned_recalloc ((void*)$block, (size_t)$count, (size_t)$size, (size_t)$alignment);
			]"
		end

feature -- Externals Address

end