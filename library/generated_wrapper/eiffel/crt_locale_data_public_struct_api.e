note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CRT_LOCALE_DATA_PUBLIC_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	locale_pctype: POINTER
			-- Access member `_locale_pctype`
		require
			exists: exists
		do
			Result := c_locale_pctype (item)
		ensure
			result_correct: Result = c_locale_pctype (item)
		end

	set_locale_pctype (a_value: POINTER) 
			-- Change the value of member `_locale_pctype` to `a_value`.
		require
			exists: exists
		do
			set_c_locale_pctype (item, a_value)
		ensure
			locale_pctype_set: a_value = locale_pctype
		end

	locale_mb_cur_max: INTEGER
			-- Access member `_locale_mb_cur_max`
		require
			exists: exists
		do
			Result := c_locale_mb_cur_max (item)
		ensure
			result_correct: Result = c_locale_mb_cur_max (item)
		end

	set_locale_mb_cur_max (a_value: INTEGER) 
			-- Change the value of member `_locale_mb_cur_max` to `a_value`.
		require
			exists: exists
		do
			set_c_locale_mb_cur_max (item, a_value)
		ensure
			locale_mb_cur_max_set: a_value = locale_mb_cur_max
		end

	locale_lc_codepage: INTEGER
			-- Access member `_locale_lc_codepage`
		require
			exists: exists
		do
			Result := c_locale_lc_codepage (item)
		ensure
			result_correct: Result = c_locale_lc_codepage (item)
		end

	set_locale_lc_codepage (a_value: INTEGER) 
			-- Change the value of member `_locale_lc_codepage` to `a_value`.
		require
			exists: exists
		do
			set_c_locale_lc_codepage (item, a_value)
		ensure
			locale_lc_codepage_set: a_value = locale_lc_codepage
		end

feature {NONE} -- Implementation wrapper for struct struct __crt_locale_data_public

	sizeof_external: INTEGER 
		external
			"C inline use <plplot.h>"
		alias
			"sizeof(struct __crt_locale_data_public)"
		end

	c_locale_pctype (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((struct __crt_locale_data_public*)$an_item)->_locale_pctype
			]"
		end

	set_c_locale_pctype (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((struct __crt_locale_data_public*)$an_item)->_locale_pctype =  (unsigned short const*)$a_value
			]"
		ensure
			locale_pctype_set: a_value = c_locale_pctype (an_item)
		end

	c_locale_mb_cur_max (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((struct __crt_locale_data_public*)$an_item)->_locale_mb_cur_max
			]"
		end

	set_c_locale_mb_cur_max (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((struct __crt_locale_data_public*)$an_item)->_locale_mb_cur_max =  (int)$a_value
			]"
		ensure
			locale_mb_cur_max_set: a_value = c_locale_mb_cur_max (an_item)
		end

	c_locale_lc_codepage (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((struct __crt_locale_data_public*)$an_item)->_locale_lc_codepage
			]"
		end

	set_c_locale_lc_codepage (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((struct __crt_locale_data_public*)$an_item)->_locale_lc_codepage =  (unsigned int)$a_value
			]"
		ensure
			locale_lc_codepage_set: a_value = c_locale_lc_codepage (an_item)
		end

end
