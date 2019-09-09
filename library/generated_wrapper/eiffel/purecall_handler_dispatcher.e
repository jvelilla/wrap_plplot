note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class PURECALL_HANDLER_DISPATCHER

inherit

	EWG_UNKNOWN_CALLBACK_C_GLUE_CODE_FUNCTIONS_API
		export {NONE} all end
create
	make

feature -- Initialization

	make (a_routine: like routine) 
				-- Dispatcher initialization
		do
			routine := a_routine
			set_purecall_handler_entry (Current, $on_callback)
		end

feature --Access: Routine 

	routine: PROCEDURE  
			--Eiffel routine to be call on callback.

feature --Access: Dispatcher

	c_dispatcher: POINTER 
		do
			Result := get_purecall_handler_stub
		end

feature --Access: Callback

	on_callback   
		do
			routine ([])
		end

end
