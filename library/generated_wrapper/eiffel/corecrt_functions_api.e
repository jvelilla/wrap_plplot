note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class CORECRT_FUNCTIONS_API


feature -- Access

	invalid_parameter_noinfo
		external
			"C inline use <plplot.h>"
		alias
			"[
				_invalid_parameter_noinfo ();
			]"
		end

	invalid_parameter_noinfo_noreturn
		external
			"C inline use <plplot.h>"
		alias
			"[
				_invalid_parameter_noinfo_noreturn ();
			]"
		end

	invoke_watson (expression: STRING_32; functionname: STRING_32; filename: STRING_32; lineno: INTEGER; reserved: INTEGER) 
		do
			c_invoke_watson ( (create {NATIVE_STRING}.make (expression)).item,  (create {NATIVE_STRING}.make (functionname)).item,  (create {NATIVE_STRING}.make (filename)).item, lineno, reserved)
		end

feature -- Externals

	c_invoke_watson (expression: POINTER; functionname: POINTER; filename: POINTER; lineno: INTEGER; reserved: INTEGER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				_invoke_watson ((wchar_t const*)$expression, (wchar_t const*)$functionname, (wchar_t const*)$filename, (unsigned int)$lineno, (uintptr_t)$reserved);
			]"
		end

feature -- Externals Address

end