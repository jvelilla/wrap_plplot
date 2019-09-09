note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class CORECRT_SEARCH_FUNCTIONS_API


feature -- Access

	bsearch_s (key: POINTER; base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER): POINTER 
		do
			Result := c_bsearch_s (key, base, numofelements, sizeofelements, comparefunction, context)
		end

	qsort_s (base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER) 
		do
			c_qsort_s (base, numofelements, sizeofelements, comparefunction, context)
		end

	bsearch (key: POINTER; base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER 
		do
			Result := c_bsearch (key, base, numofelements, sizeofelements, comparefunction)
		end

	qsort (base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER) 
		do
			c_qsort (base, numofelements, sizeofelements, comparefunction)
		end

	lfind_s (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER): POINTER 
		do
			Result := c_lfind_s (key, base, numofelements, sizeofelements, comparefunction, context)
		end

	lfind_1 (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER 
		do
			Result := c_lfind_1 (key, base, numofelements, sizeofelements, comparefunction)
		end

	lsearch_s (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER): POINTER 
		do
			Result := c_lsearch_s (key, base, numofelements, sizeofelements, comparefunction, context)
		end

	lsearch_1 (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER 
		do
			Result := c_lsearch_1 (key, base, numofelements, sizeofelements, comparefunction)
		end

	lfind (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER 
		do
			Result := c_lfind (key, base, numofelements, sizeofelements, comparefunction)
		end

	lsearch (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER 
		do
			Result := c_lsearch (key, base, numofelements, sizeofelements, comparefunction)
		end

feature -- Externals

	c_bsearch_s (key: POINTER; base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return bsearch_s ((void const*)$key, (void const*)$base, (rsize_t)$numofelements, (rsize_t)$sizeofelements, (_CoreCrtSecureSearchSortCompareFunction)$comparefunction, (void*)$context);
			]"
		end

	c_qsort_s (base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				qsort_s ((void*)$base, (rsize_t)$numofelements, (rsize_t)$sizeofelements, (_CoreCrtSecureSearchSortCompareFunction)$comparefunction, (void*)$context);
			]"
		end

	c_bsearch (key: POINTER; base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return bsearch ((void const*)$key, (void const*)$base, (size_t)$numofelements, (size_t)$sizeofelements, (_CoreCrtNonSecureSearchSortCompareFunction)$comparefunction);
			]"
		end

	c_qsort (base: POINTER; numofelements: INTEGER; sizeofelements: INTEGER; comparefunction: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				qsort ((void*)$base, (size_t)$numofelements, (size_t)$sizeofelements, (_CoreCrtNonSecureSearchSortCompareFunction)$comparefunction);
			]"
		end

	c_lfind_s (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _lfind_s ((void const*)$key, (void const*)$base, (unsigned int*)$numofelements, (size_t)$sizeofelements, (_CoreCrtSecureSearchSortCompareFunction)$comparefunction, (void*)$context);
			]"
		end

	c_lfind_1 (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _lfind ((void const*)$key, (void const*)$base, (unsigned int*)$numofelements, (unsigned int)$sizeofelements, (_CoreCrtNonSecureSearchSortCompareFunction)$comparefunction);
			]"
		end

	c_lsearch_s (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER; context: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _lsearch_s ((void const*)$key, (void*)$base, (unsigned int*)$numofelements, (size_t)$sizeofelements, (_CoreCrtSecureSearchSortCompareFunction)$comparefunction, (void*)$context);
			]"
		end

	c_lsearch_1 (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _lsearch ((void const*)$key, (void*)$base, (unsigned int*)$numofelements, (unsigned int)$sizeofelements, (_CoreCrtNonSecureSearchSortCompareFunction)$comparefunction);
			]"
		end

	c_lfind (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return lfind ((void const*)$key, (void const*)$base, (unsigned int*)$numofelements, (unsigned int)$sizeofelements, (_CoreCrtNonSecureSearchSortCompareFunction)$comparefunction);
			]"
		end

	c_lsearch (key: POINTER; base: POINTER; numofelements: POINTER; sizeofelements: INTEGER; comparefunction: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return lsearch ((void const*)$key, (void*)$base, (unsigned int*)$numofelements, (unsigned int)$sizeofelements, (_CoreCrtNonSecureSearchSortCompareFunction)$comparefunction);
			]"
		end

feature -- Externals Address

end