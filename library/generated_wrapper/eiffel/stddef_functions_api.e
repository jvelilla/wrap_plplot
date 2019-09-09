note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class STDDEF_FUNCTIONS_API


feature -- Access

	errno: POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _errno ();
			]"
		end

	set_errno (value: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _set_errno ((int)$value);
			]"
		end

	get_errno (value: POINTER): INTEGER 
		do
			Result := c_get_errno (value)
		end

	threadid: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __threadid ();
			]"
		end

	threadhandle: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __threadhandle ();
			]"
		end

feature -- Externals

	c_get_errno (value: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _get_errno ((int*)$value);
			]"
		end

feature -- Externals Address

end
