note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class PLBUFFERING_CB_STRUCT_API

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

	cmd: INTEGER
			-- Access member `cmd`
		require
			exists: exists
		do
			Result := c_cmd (item)
		ensure
			result_correct: Result = c_cmd (item)
		end

	set_cmd (a_value: INTEGER) 
			-- Change the value of member `cmd` to `a_value`.
		require
			exists: exists
		do
			set_c_cmd (item, a_value)
		ensure
			cmd_set: a_value = cmd
		end

	a_result: INTEGER
			-- Access member `result`
		require
			exists: exists
		do
			Result := c_a_result (item)
		ensure
			result_correct: Result = c_a_result (item)
		end

	set_a_result (a_value: INTEGER) 
			-- Change the value of member `result` to `a_value`.
		require
			exists: exists
		do
			set_c_a_result (item, a_value)
		ensure
			a_result_set: a_value = a_result
		end

feature {NONE} -- Implementation wrapper for struct PLBufferingCB

	sizeof_external: INTEGER 
		external
			"C inline use <plplot.h>"
		alias
			"sizeof(PLBufferingCB)"
		end

	c_cmd (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((PLBufferingCB*)$an_item)->cmd
			]"
		end

	set_c_cmd (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((PLBufferingCB*)$an_item)->cmd =  (PLINT)$a_value
			]"
		ensure
			cmd_set: a_value = c_cmd (an_item)
		end

	c_a_result (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((PLBufferingCB*)$an_item)->result
			]"
		end

	set_c_a_result (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <plplot.h>"
		alias
			"[
				((PLBufferingCB*)$an_item)->result =  (PLINT)$a_value
			]"
		ensure
			a_result_set: a_value = c_a_result (an_item)
		end

end
