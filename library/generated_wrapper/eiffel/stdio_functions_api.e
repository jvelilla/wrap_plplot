note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class STDIO_FUNCTIONS_API


feature -- Access

	get_stream_buffer_pointers (stream: _IOBUF_STRUCT_API; base: POINTER; pointer: POINTER; count: POINTER): INTEGER 
		do
			Result := c_get_stream_buffer_pointers (stream.item, base, pointer, count)
		end

	clearerr_s (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_clearerr_s (stream.item)
		end

	fopen_s (stream: _IOBUF_STRUCT_API; filename: STRING; mode: STRING): INTEGER 
		local
			filename_c_string: C_STRING
			mode_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			create mode_c_string.make (mode)
			Result := c_fopen_s (stream.item, filename_c_string.item, mode_c_string.item)
		end

	fread_s (buffer: POINTER; buffersize: INTEGER; elementsize: INTEGER; elementcount: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fread_s (buffer, buffersize, elementsize, elementcount, stream.item)
		end

	freopen_s (stream: _IOBUF_STRUCT_API; filename: STRING; mode: STRING; oldstream: _IOBUF_STRUCT_API): INTEGER 
		local
			filename_c_string: C_STRING
			mode_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			create mode_c_string.make (mode)
			Result := c_freopen_s (stream.item, filename_c_string.item, mode_c_string.item, oldstream.item)
		end

	gets_s (buffer: STRING; size: INTEGER): POINTER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_gets_s (buffer_c_string.item, size)
		end

	tmpfile_s (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_tmpfile_s (stream.item)
		end

	tmpnam_s (buffer: STRING; size: INTEGER): INTEGER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_tmpnam_s (buffer_c_string.item, size)
		end

	clearerr (stream: _IOBUF_STRUCT_API) 
		do
			c_clearerr (stream.item)
		end

	fclose (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fclose (stream.item)
		end

	fcloseall_1: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fcloseall ();
			]"
		end

	fdopen_1 (filehandle: INTEGER; mode: STRING): detachable _IOBUF_STRUCT_API 
		local
			mode_c_string: C_STRING
		do
			create mode_c_string.make (mode)
			if attached c_fdopen_1 (filehandle, mode_c_string.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	feof (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_feof (stream.item)
		end

	ferror (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_ferror (stream.item)
		end

	fflush (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fflush (stream.item)
		end

	fgetc (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fgetc (stream.item)
		end

	fgetchar_1: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fgetchar ();
			]"
		end

	fgetpos (stream: _IOBUF_STRUCT_API; position: POINTER): INTEGER 
		do
			Result := c_fgetpos (stream.item, position)
		end

	fgets (buffer: STRING; maxcount: INTEGER; stream: _IOBUF_STRUCT_API): POINTER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_fgets (buffer_c_string.item, maxcount, stream.item)
		end

	fileno_1 (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fileno_1 (stream.item)
		end

	flushall_1: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _flushall ();
			]"
		end

	fopen (filename: STRING; mode: STRING): detachable _IOBUF_STRUCT_API 
		local
			filename_c_string: C_STRING
			mode_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			create mode_c_string.make (mode)
			if attached c_fopen (filename_c_string.item, mode_c_string.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	fputc (character: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fputc (character, stream.item)
		end

	fputchar_1 (character: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fputchar ((int)$character);
			]"
		end

	fputs (buffer: STRING; stream: _IOBUF_STRUCT_API): INTEGER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_fputs (buffer_c_string.item, stream.item)
		end

	fread (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fread (buffer, elementsize, elementcount, stream.item)
		end

	freopen (filename: STRING; mode: STRING; stream: _IOBUF_STRUCT_API): detachable _IOBUF_STRUCT_API 
		local
			filename_c_string: C_STRING
			mode_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			create mode_c_string.make (mode)
			if attached c_freopen (filename_c_string.item, mode_c_string.item, stream.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	fsopen (filename: STRING; mode: STRING; shflag: INTEGER): detachable _IOBUF_STRUCT_API 
		local
			filename_c_string: C_STRING
			mode_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			create mode_c_string.make (mode)
			if attached c_fsopen (filename_c_string.item, mode_c_string.item, shflag) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	fsetpos (stream: _IOBUF_STRUCT_API; position: POINTER): INTEGER 
		do
			Result := c_fsetpos (stream.item, position)
		end

	fseek (stream: _IOBUF_STRUCT_API; offset: INTEGER; origin: INTEGER): INTEGER 
		do
			Result := c_fseek (stream.item, offset, origin)
		end

	fseeki64 (stream: _IOBUF_STRUCT_API; offset: INTEGER; origin: INTEGER): INTEGER 
		do
			Result := c_fseeki64 (stream.item, offset, origin)
		end

	ftell (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_ftell (stream.item)
		end

	ftelli64 (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_ftelli64 (stream.item)
		end

	fwrite (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fwrite (buffer, elementsize, elementcount, stream.item)
		end

	getc (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_getc (stream.item)
		end

	getchar: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return getchar ();
			]"
		end

	getmaxstdio: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _getmaxstdio ();
			]"
		end

	getw_1 (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_getw_1 (stream.item)
		end

	perror (errormessage: STRING) 
		local
			errormessage_c_string: C_STRING
		do
			create errormessage_c_string.make (errormessage)
			c_perror (errormessage_c_string.item)
		end

	pclose (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_pclose (stream.item)
		end

	popen (command: STRING; mode: STRING): detachable _IOBUF_STRUCT_API 
		local
			command_c_string: C_STRING
			mode_c_string: C_STRING
		do
			create command_c_string.make (command)
			create mode_c_string.make (mode)
			if attached c_popen (command_c_string.item, mode_c_string.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	putc (character: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_putc (character, stream.item)
		end

	putchar (character: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return putchar ((int)$character);
			]"
		end

	puts (buffer: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_puts (buffer_c_string.item)
		end

	putw_1 (word: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_putw_1 (word, stream.item)
		end

	remove (filename: STRING): INTEGER 
		local
			filename_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			Result := c_remove (filename_c_string.item)
		end

	rename (oldfilename: STRING; newfilename: STRING): INTEGER 
		local
			oldfilename_c_string: C_STRING
			newfilename_c_string: C_STRING
		do
			create oldfilename_c_string.make (oldfilename)
			create newfilename_c_string.make (newfilename)
			Result := c_rename (oldfilename_c_string.item, newfilename_c_string.item)
		end

	unlink_1 (filename: STRING): INTEGER 
		local
			filename_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			Result := c_unlink_1 (filename_c_string.item)
		end

	unlink (filename: STRING): INTEGER 
		local
			filename_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			Result := c_unlink (filename_c_string.item)
		end

	rewind (stream: _IOBUF_STRUCT_API) 
		do
			c_rewind (stream.item)
		end

	rmtmp_1: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _rmtmp ();
			]"
		end

	setbuf (stream: _IOBUF_STRUCT_API; buffer: STRING) 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			c_setbuf (stream.item, buffer_c_string.item)
		end

	setmaxstdio (maximum: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _setmaxstdio ((int)$maximum);
			]"
		end

	setvbuf (stream: _IOBUF_STRUCT_API; buffer: STRING; mode: INTEGER; size: INTEGER): INTEGER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_setvbuf (stream.item, buffer_c_string.item, mode, size)
		end

	tempnam_1 (directoryname: STRING; fileprefix: STRING): POINTER 
		local
			directoryname_c_string: C_STRING
			fileprefix_c_string: C_STRING
		do
			create directoryname_c_string.make (directoryname)
			create fileprefix_c_string.make (fileprefix)
			Result := c_tempnam_1 (directoryname_c_string.item, fileprefix_c_string.item)
		end

	tmpfile: detachable _IOBUF_STRUCT_API 
		do
			if attached c_tmpfile as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	tmpnam (buffer: STRING): POINTER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_tmpnam (buffer_c_string.item)
		end

	ungetc (character: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_ungetc (character, stream.item)
		end

	lock_file (stream: _IOBUF_STRUCT_API) 
		do
			c_lock_file (stream.item)
		end

	unlock_file (stream: _IOBUF_STRUCT_API) 
		do
			c_unlock_file (stream.item)
		end

	fclose_nolock (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fclose_nolock (stream.item)
		end

	fflush_nolock (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fflush_nolock (stream.item)
		end

	fgetc_nolock (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fgetc_nolock (stream.item)
		end

	fputc_nolock (character: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fputc_nolock (character, stream.item)
		end

	fread_nolock (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fread_nolock (buffer, elementsize, elementcount, stream.item)
		end

	fread_nolock_s (buffer: POINTER; buffersize: INTEGER; elementsize: INTEGER; elementcount: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fread_nolock_s (buffer, buffersize, elementsize, elementcount, stream.item)
		end

	fseek_nolock (stream: _IOBUF_STRUCT_API; offset: INTEGER; origin: INTEGER): INTEGER 
		do
			Result := c_fseek_nolock (stream.item, offset, origin)
		end

	fseeki64_nolock (stream: _IOBUF_STRUCT_API; offset: INTEGER; origin: INTEGER): INTEGER 
		do
			Result := c_fseeki64_nolock (stream.item, offset, origin)
		end

	ftell_nolock (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_ftell_nolock (stream.item)
		end

	ftelli64_nolock (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_ftelli64_nolock (stream.item)
		end

	fwrite_nolock (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fwrite_nolock (buffer, elementsize, elementcount, stream.item)
		end

	getc_nolock (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_getc_nolock (stream.item)
		end

	putc_nolock (character: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_putc_nolock (character, stream.item)
		end

	ungetc_nolock (character: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_ungetc_nolock (character, stream.item)
		end

	p__commode: POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __p__commode ();
			]"
		end

	stdio_common_vfprintf (options: INTEGER; stream: _IOBUF_STRUCT_API; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_stdio_common_vfprintf (options, stream.item, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	stdio_common_vfprintf_s (options: INTEGER; stream: _IOBUF_STRUCT_API; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_stdio_common_vfprintf_s (options, stream.item, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	stdio_common_vfprintf_p (options: INTEGER; stream: _IOBUF_STRUCT_API; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_stdio_common_vfprintf_p (options, stream.item, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	set_printf_count_output (value: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _set_printf_count_output ((int)$value);
			]"
		end

	get_printf_count_output: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _get_printf_count_output ();
			]"
		end

	stdio_common_vfscanf (options: INTEGER; stream: _IOBUF_STRUCT_API; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_stdio_common_vfscanf (options, stream.item, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	stdio_common_vsprintf (options: INTEGER; buffer: STRING; buffercount: INTEGER; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_stdio_common_vsprintf (options, buffer_c_string.item, buffercount, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	stdio_common_vsprintf_s (options: INTEGER; buffer: STRING; buffercount: INTEGER; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_stdio_common_vsprintf_s (options, buffer_c_string.item, buffercount, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	stdio_common_vsnprintf_s (options: INTEGER; buffer: STRING; buffercount: INTEGER; maxcount: INTEGER; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_stdio_common_vsnprintf_s (options, buffer_c_string.item, buffercount, maxcount, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	stdio_common_vsprintf_p (options: INTEGER; buffer: STRING; buffercount: INTEGER; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_stdio_common_vsprintf_p (options, buffer_c_string.item, buffercount, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	sprintf (buffer: STRING; format: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_sprintf (buffer_c_string.item, format_c_string.item)
		end

	vsprintf (buffer: STRING; format: STRING; args: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_vsprintf (buffer_c_string.item, format_c_string.item,  (create {C_STRING}.make (args)).item)
		end

	snprintf (buffer: STRING; buffercount: INTEGER; format: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_snprintf (buffer_c_string.item, buffercount, format_c_string.item)
		end

	vsnprintf (buffer: STRING; buffercount: INTEGER; format: STRING; args: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_vsnprintf (buffer_c_string.item, buffercount, format_c_string.item,  (create {C_STRING}.make (args)).item)
		end

	stdio_common_vsscanf (options: INTEGER; buffer: STRING; buffercount: INTEGER; format: STRING; locale: __CRT_LOCALE_POINTERS_STRUCT_API; arglist: STRING): INTEGER 
		local
			buffer_c_string: C_STRING
			format_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			create format_c_string.make (format)
			Result := c_stdio_common_vsscanf (options, buffer_c_string.item, buffercount, format_c_string.item, locale.item,  (create {C_STRING}.make (arglist)).item)
		end

	tempnam (directory: STRING; fileprefix: STRING): POINTER 
		local
			directory_c_string: C_STRING
			fileprefix_c_string: C_STRING
		do
			create directory_c_string.make (directory)
			create fileprefix_c_string.make (fileprefix)
			Result := c_tempnam (directory_c_string.item, fileprefix_c_string.item)
		end

	fcloseall: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fcloseall ();
			]"
		end

	fdopen (filehandle: INTEGER; format: STRING): detachable _IOBUF_STRUCT_API 
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			if attached c_fdopen (filehandle, format_c_string.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	fgetchar: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fgetchar ();
			]"
		end

	fileno (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_fileno (stream.item)
		end

	flushall: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return flushall ();
			]"
		end

	fputchar (ch: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fputchar ((int)$ch);
			]"
		end

	getw (stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_getw (stream.item)
		end

	putw (ch: INTEGER; stream: _IOBUF_STRUCT_API): INTEGER 
		do
			Result := c_putw (ch, stream.item)
		end

	rmtmp: INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return rmtmp ();
			]"
		end

feature -- Externals

	c_get_stream_buffer_pointers (stream: POINTER; base: POINTER; pointer: POINTER; count: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _get_stream_buffer_pointers ((FILE*)$stream, (char***)$base, (char***)$pointer, (int**)$count);
			]"
		end

	c_clearerr_s (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return clearerr_s ((FILE*)$stream);
			]"
		end

	c_fopen_s (stream: POINTER; filename: POINTER; mode: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fopen_s ((FILE**)$stream, (char const*)$filename, (char const*)$mode);
			]"
		end

	c_fread_s (buffer: POINTER; buffersize: INTEGER; elementsize: INTEGER; elementcount: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fread_s ((void*)$buffer, (size_t)$buffersize, (size_t)$elementsize, (size_t)$elementcount, (FILE*)$stream);
			]"
		end

	c_freopen_s (stream: POINTER; filename: POINTER; mode: POINTER; oldstream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return freopen_s ((FILE**)$stream, (char const*)$filename, (char const*)$mode, (FILE*)$oldstream);
			]"
		end

	c_gets_s (buffer: POINTER; size: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return gets_s ((char*)$buffer, (rsize_t)$size);
			]"
		end

	c_tmpfile_s (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return tmpfile_s ((FILE**)$stream);
			]"
		end

	c_tmpnam_s (buffer: POINTER; size: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return tmpnam_s ((char*)$buffer, (rsize_t)$size);
			]"
		end

	c_clearerr (stream: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				clearerr ((FILE*)$stream);
			]"
		end

	c_fclose (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fclose ((FILE*)$stream);
			]"
		end

	c_fdopen_1 (filehandle: INTEGER; mode: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fdopen ((int)$filehandle, (char const*)$mode);
			]"
		end

	c_feof (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return feof ((FILE*)$stream);
			]"
		end

	c_ferror (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return ferror ((FILE*)$stream);
			]"
		end

	c_fflush (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fflush ((FILE*)$stream);
			]"
		end

	c_fgetc (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fgetc ((FILE*)$stream);
			]"
		end

	c_fgetpos (stream: POINTER; position: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fgetpos ((FILE*)$stream, (fpos_t*)$position);
			]"
		end

	c_fgets (buffer: POINTER; maxcount: INTEGER; stream: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fgets ((char*)$buffer, (int)$maxcount, (FILE*)$stream);
			]"
		end

	c_fileno_1 (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fileno ((FILE*)$stream);
			]"
		end

	c_fopen (filename: POINTER; mode: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fopen ((char const*)$filename, (char const*)$mode);
			]"
		end

	c_fputc (character: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fputc ((int)$character, (FILE*)$stream);
			]"
		end

	c_fputs (buffer: POINTER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fputs ((char const*)$buffer, (FILE*)$stream);
			]"
		end

	c_fread (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fread ((void*)$buffer, (size_t)$elementsize, (size_t)$elementcount, (FILE*)$stream);
			]"
		end

	c_freopen (filename: POINTER; mode: POINTER; stream: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return freopen ((char const*)$filename, (char const*)$mode, (FILE*)$stream);
			]"
		end

	c_fsopen (filename: POINTER; mode: POINTER; shflag: INTEGER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fsopen ((char const*)$filename, (char const*)$mode, (int)$shflag);
			]"
		end

	c_fsetpos (stream: POINTER; position: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fsetpos ((FILE*)$stream, (fpos_t const*)$position);
			]"
		end

	c_fseek (stream: POINTER; offset: INTEGER; origin: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fseek ((FILE*)$stream, (long)$offset, (int)$origin);
			]"
		end

	c_fseeki64 (stream: POINTER; offset: INTEGER; origin: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fseeki64 ((FILE*)$stream, (__int64)$offset, (int)$origin);
			]"
		end

	c_ftell (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return ftell ((FILE*)$stream);
			]"
		end

	c_ftelli64 (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _ftelli64 ((FILE*)$stream);
			]"
		end

	c_fwrite (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fwrite ((void const*)$buffer, (size_t)$elementsize, (size_t)$elementcount, (FILE*)$stream);
			]"
		end

	c_getc (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return getc ((FILE*)$stream);
			]"
		end

	c_getw_1 (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _getw ((FILE*)$stream);
			]"
		end

	c_perror (errormessage: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				perror ((char const*)$errormessage);
			]"
		end

	c_pclose (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _pclose ((FILE*)$stream);
			]"
		end

	c_popen (command: POINTER; mode: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _popen ((char const*)$command, (char const*)$mode);
			]"
		end

	c_putc (character: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return putc ((int)$character, (FILE*)$stream);
			]"
		end

	c_puts (buffer: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return puts ((char const*)$buffer);
			]"
		end

	c_putw_1 (word: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _putw ((int)$word, (FILE*)$stream);
			]"
		end

	c_remove (filename: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return remove ((char const*)$filename);
			]"
		end

	c_rename (oldfilename: POINTER; newfilename: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return rename ((char const*)$oldfilename, (char const*)$newfilename);
			]"
		end

	c_unlink_1 (filename: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _unlink ((char const*)$filename);
			]"
		end

	c_unlink (filename: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return unlink ((char const*)$filename);
			]"
		end

	c_rewind (stream: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				rewind ((FILE*)$stream);
			]"
		end

	c_setbuf (stream: POINTER; buffer: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				setbuf ((FILE*)$stream, (char*)$buffer);
			]"
		end

	c_setvbuf (stream: POINTER; buffer: POINTER; mode: INTEGER; size: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return setvbuf ((FILE*)$stream, (char*)$buffer, (int)$mode, (size_t)$size);
			]"
		end

	c_tempnam_1 (directoryname: POINTER; fileprefix: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _tempnam ((char const*)$directoryname, (char const*)$fileprefix);
			]"
		end

	c_tmpfile: POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return tmpfile ();
			]"
		end

	c_tmpnam (buffer: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return tmpnam ((char*)$buffer);
			]"
		end

	c_ungetc (character: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return ungetc ((int)$character, (FILE*)$stream);
			]"
		end

	c_lock_file (stream: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				_lock_file ((FILE*)$stream);
			]"
		end

	c_unlock_file (stream: POINTER)
		external
			"C inline use <plplot.h>"
		alias
			"[
				_unlock_file ((FILE*)$stream);
			]"
		end

	c_fclose_nolock (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fclose_nolock ((FILE*)$stream);
			]"
		end

	c_fflush_nolock (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fflush_nolock ((FILE*)$stream);
			]"
		end

	c_fgetc_nolock (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fgetc_nolock ((FILE*)$stream);
			]"
		end

	c_fputc_nolock (character: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fputc_nolock ((int)$character, (FILE*)$stream);
			]"
		end

	c_fread_nolock (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fread_nolock ((void*)$buffer, (size_t)$elementsize, (size_t)$elementcount, (FILE*)$stream);
			]"
		end

	c_fread_nolock_s (buffer: POINTER; buffersize: INTEGER; elementsize: INTEGER; elementcount: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fread_nolock_s ((void*)$buffer, (size_t)$buffersize, (size_t)$elementsize, (size_t)$elementcount, (FILE*)$stream);
			]"
		end

	c_fseek_nolock (stream: POINTER; offset: INTEGER; origin: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fseek_nolock ((FILE*)$stream, (long)$offset, (int)$origin);
			]"
		end

	c_fseeki64_nolock (stream: POINTER; offset: INTEGER; origin: INTEGER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fseeki64_nolock ((FILE*)$stream, (__int64)$offset, (int)$origin);
			]"
		end

	c_ftell_nolock (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _ftell_nolock ((FILE*)$stream);
			]"
		end

	c_ftelli64_nolock (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _ftelli64_nolock ((FILE*)$stream);
			]"
		end

	c_fwrite_nolock (buffer: POINTER; elementsize: INTEGER; elementcount: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _fwrite_nolock ((void const*)$buffer, (size_t)$elementsize, (size_t)$elementcount, (FILE*)$stream);
			]"
		end

	c_getc_nolock (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _getc_nolock ((FILE*)$stream);
			]"
		end

	c_putc_nolock (character: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _putc_nolock ((int)$character, (FILE*)$stream);
			]"
		end

	c_ungetc_nolock (character: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _ungetc_nolock ((int)$character, (FILE*)$stream);
			]"
		end

	c_stdio_common_vfprintf (options: INTEGER; stream: POINTER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vfprintf ((unsigned __int64)$options, (FILE*)$stream, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_stdio_common_vfprintf_s (options: INTEGER; stream: POINTER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vfprintf_s ((unsigned __int64)$options, (FILE*)$stream, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_stdio_common_vfprintf_p (options: INTEGER; stream: POINTER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vfprintf_p ((unsigned __int64)$options, (FILE*)$stream, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_stdio_common_vfscanf (options: INTEGER; stream: POINTER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vfscanf ((unsigned __int64)$options, (FILE*)$stream, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_stdio_common_vsprintf (options: INTEGER; buffer: POINTER; buffercount: INTEGER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vsprintf ((unsigned __int64)$options, (char*)$buffer, (size_t)$buffercount, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_stdio_common_vsprintf_s (options: INTEGER; buffer: POINTER; buffercount: INTEGER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vsprintf_s ((unsigned __int64)$options, (char*)$buffer, (size_t)$buffercount, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_stdio_common_vsnprintf_s (options: INTEGER; buffer: POINTER; buffercount: INTEGER; maxcount: INTEGER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vsnprintf_s ((unsigned __int64)$options, (char*)$buffer, (size_t)$buffercount, (size_t)$maxcount, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_stdio_common_vsprintf_p (options: INTEGER; buffer: POINTER; buffercount: INTEGER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vsprintf_p ((unsigned __int64)$options, (char*)$buffer, (size_t)$buffercount, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_sprintf (buffer: POINTER; format: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return sprintf ((char*)$buffer, (char const*)$format);
			]"
		end

	c_vsprintf (buffer: POINTER; format: POINTER; args: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return vsprintf ((char*)$buffer, (char const*)$format, (va_list)$args);
			]"
		end

	c_snprintf (buffer: POINTER; buffercount: INTEGER; format: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _snprintf ((char*)$buffer, (size_t)$buffercount, (char const*)$format);
			]"
		end

	c_vsnprintf (buffer: POINTER; buffercount: INTEGER; format: POINTER; args: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return _vsnprintf ((char*)$buffer, (size_t)$buffercount, (char const*)$format, (va_list)$args);
			]"
		end

	c_stdio_common_vsscanf (options: INTEGER; buffer: POINTER; buffercount: INTEGER; format: POINTER; locale: POINTER; arglist: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return __stdio_common_vsscanf ((unsigned __int64)$options, (char const*)$buffer, (size_t)$buffercount, (char const*)$format, (_locale_t)$locale, (va_list)$arglist);
			]"
		end

	c_tempnam (directory: POINTER; fileprefix: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return tempnam ((char const*)$directory, (char const*)$fileprefix);
			]"
		end

	c_fdopen (filehandle: INTEGER; format: POINTER): POINTER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fdopen ((int)$filehandle, (char const*)$format);
			]"
		end

	c_fileno (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return fileno ((FILE*)$stream);
			]"
		end

	c_getw (stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return getw ((FILE*)$stream);
			]"
		end

	c_putw (ch: INTEGER; stream: POINTER): INTEGER
		external
			"C inline use <plplot.h>"
		alias
			"[
				return putw ((int)$ch, (FILE*)$stream);
			]"
		end

feature -- Externals Address

end