note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CRT_MULTIBYTE_DATA_STRUCT_API

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

feature {NONE} -- Implementation wrapper for struct struct __crt_multibyte_data

	sizeof_external: INTEGER 
		do
			check
				size_not_known: False
			end
		ensure
			is_class: class
		end

end
