pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Pro 23.0w (20220201-112)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_ton_test" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#8b7c634f#;
   pragma Export (C, u00001, "ton_testB");
   u00002 : constant Version_32 := 16#7320ff5f#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#b0d43184#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#c38e30b1#;
   pragma Export (C, u00004, "graphicsB");
   u00005 : constant Version_32 := 16#0ff0bd72#;
   pragma Export (C, u00005, "graphicsS");
   u00006 : constant Version_32 := 16#a2da961d#;
   pragma Export (C, u00006, "systemS");
   u00007 : constant Version_32 := 16#1982dcd0#;
   pragma Export (C, u00007, "system__memoryB");
   u00008 : constant Version_32 := 16#f95ea4cd#;
   pragma Export (C, u00008, "system__memoryS");
   u00009 : constant Version_32 := 16#7b8a0989#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#fec21d10#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00011, "adaS");
   u00012 : constant Version_32 := 16#0740df23#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerB");
   u00013 : constant Version_32 := 16#6dc27684#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerS");
   u00014 : constant Version_32 := 16#fd5f5f4c#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#ea08eb09#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#e12f1eb0#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#790dbf4d#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#821dff88#;
   pragma Export (C, u00018, "system__parametersB");
   u00019 : constant Version_32 := 16#764e32bb#;
   pragma Export (C, u00019, "system__parametersS");
   u00020 : constant Version_32 := 16#ec4fa52d#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#cf5489e9#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#37c92568#;
   pragma Export (C, u00022, "system__soft_links__initializeB");
   u00023 : constant Version_32 := 16#2ed17187#;
   pragma Export (C, u00023, "system__soft_links__initializeS");
   u00024 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00024, "system__stack_checkingB");
   u00025 : constant Version_32 := 16#c4d54817#;
   pragma Export (C, u00025, "system__stack_checkingS");
   u00026 : constant Version_32 := 16#c71e6c8a#;
   pragma Export (C, u00026, "system__exception_tableB");
   u00027 : constant Version_32 := 16#2ff1e004#;
   pragma Export (C, u00027, "system__exception_tableS");
   u00028 : constant Version_32 := 16#907f292f#;
   pragma Export (C, u00028, "system__exceptionsS");
   u00029 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00029, "system__exceptions__machineB");
   u00030 : constant Version_32 := 16#8bdfdbe3#;
   pragma Export (C, u00030, "system__exceptions__machineS");
   u00031 : constant Version_32 := 16#7706238d#;
   pragma Export (C, u00031, "system__exceptions_debugB");
   u00032 : constant Version_32 := 16#92d4ce4e#;
   pragma Export (C, u00032, "system__exceptions_debugS");
   u00033 : constant Version_32 := 16#1253e556#;
   pragma Export (C, u00033, "system__img_intS");
   u00034 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#244062a0#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00036, "system__traceback_entriesB");
   u00037 : constant Version_32 := 16#6ac62991#;
   pragma Export (C, u00037, "system__traceback_entriesS");
   u00038 : constant Version_32 := 16#69fd68e2#;
   pragma Export (C, u00038, "system__traceback__symbolicB");
   u00039 : constant Version_32 := 16#d9e66ad1#;
   pragma Export (C, u00039, "system__traceback__symbolicS");
   u00040 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00040, "ada__containersS");
   u00041 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00041, "ada__exceptions__tracebackB");
   u00042 : constant Version_32 := 16#eb07882c#;
   pragma Export (C, u00042, "ada__exceptions__tracebackS");
   u00043 : constant Version_32 := 16#edec285f#;
   pragma Export (C, u00043, "interfacesS");
   u00044 : constant Version_32 := 16#7f1e3740#;
   pragma Export (C, u00044, "interfaces__cB");
   u00045 : constant Version_32 := 16#1bfc3385#;
   pragma Export (C, u00045, "interfaces__cS");
   u00046 : constant Version_32 := 16#a828b371#;
   pragma Export (C, u00046, "system__bounded_stringsB");
   u00047 : constant Version_32 := 16#d527b704#;
   pragma Export (C, u00047, "system__bounded_stringsS");
   u00048 : constant Version_32 := 16#fc48a043#;
   pragma Export (C, u00048, "system__crtlS");
   u00049 : constant Version_32 := 16#0af47c7a#;
   pragma Export (C, u00049, "system__dwarf_linesB");
   u00050 : constant Version_32 := 16#457ca30b#;
   pragma Export (C, u00050, "system__dwarf_linesS");
   u00051 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00051, "ada__charactersS");
   u00052 : constant Version_32 := 16#a5e53111#;
   pragma Export (C, u00052, "ada__characters__handlingB");
   u00053 : constant Version_32 := 16#763c2a94#;
   pragma Export (C, u00053, "ada__characters__handlingS");
   u00054 : constant Version_32 := 16#cde9ea2d#;
   pragma Export (C, u00054, "ada__characters__latin_1S");
   u00055 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00055, "ada__stringsS");
   u00056 : constant Version_32 := 16#6424b9ce#;
   pragma Export (C, u00056, "ada__strings__mapsB");
   u00057 : constant Version_32 := 16#5349602c#;
   pragma Export (C, u00057, "ada__strings__mapsS");
   u00058 : constant Version_32 := 16#96b40646#;
   pragma Export (C, u00058, "system__bit_opsB");
   u00059 : constant Version_32 := 16#6f293a21#;
   pragma Export (C, u00059, "system__bit_opsS");
   u00060 : constant Version_32 := 16#58f0e944#;
   pragma Export (C, u00060, "system__unsigned_typesS");
   u00061 : constant Version_32 := 16#88fa2db0#;
   pragma Export (C, u00061, "ada__strings__maps__constantsS");
   u00062 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00062, "system__address_imageB");
   u00063 : constant Version_32 := 16#03360b27#;
   pragma Export (C, u00063, "system__address_imageS");
   u00064 : constant Version_32 := 16#04e17b2e#;
   pragma Export (C, u00064, "system__img_unsS");
   u00065 : constant Version_32 := 16#20ec7aa3#;
   pragma Export (C, u00065, "system__ioB");
   u00066 : constant Version_32 := 16#3c986152#;
   pragma Export (C, u00066, "system__ioS");
   u00067 : constant Version_32 := 16#754b4bb8#;
   pragma Export (C, u00067, "system__mmapB");
   u00068 : constant Version_32 := 16#e42f418c#;
   pragma Export (C, u00068, "system__mmapS");
   u00069 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00069, "ada__io_exceptionsS");
   u00070 : constant Version_32 := 16#dd82c35a#;
   pragma Export (C, u00070, "system__mmap__os_interfaceB");
   u00071 : constant Version_32 := 16#37fd3b64#;
   pragma Export (C, u00071, "system__mmap__os_interfaceS");
   u00072 : constant Version_32 := 16#40e7f3aa#;
   pragma Export (C, u00072, "system__mmap__unixS");
   u00073 : constant Version_32 := 16#d50b62b1#;
   pragma Export (C, u00073, "system__os_libB");
   u00074 : constant Version_32 := 16#58b64642#;
   pragma Export (C, u00074, "system__os_libS");
   u00075 : constant Version_32 := 16#6e5d049a#;
   pragma Export (C, u00075, "system__atomic_operations__test_and_setB");
   u00076 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00076, "system__atomic_operations__test_and_setS");
   u00077 : constant Version_32 := 16#65b9ec38#;
   pragma Export (C, u00077, "system__atomic_operationsS");
   u00078 : constant Version_32 := 16#29cc6115#;
   pragma Export (C, u00078, "system__atomic_primitivesB");
   u00079 : constant Version_32 := 16#9b4d0d57#;
   pragma Export (C, u00079, "system__atomic_primitivesS");
   u00080 : constant Version_32 := 16#b98923bf#;
   pragma Export (C, u00080, "system__case_utilB");
   u00081 : constant Version_32 := 16#6dc94148#;
   pragma Export (C, u00081, "system__case_utilS");
   u00082 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00082, "system__stringsB");
   u00083 : constant Version_32 := 16#39589605#;
   pragma Export (C, u00083, "system__stringsS");
   u00084 : constant Version_32 := 16#51051765#;
   pragma Export (C, u00084, "system__object_readerB");
   u00085 : constant Version_32 := 16#4d58338b#;
   pragma Export (C, u00085, "system__object_readerS");
   u00086 : constant Version_32 := 16#d21b42c5#;
   pragma Export (C, u00086, "system__val_lliS");
   u00087 : constant Version_32 := 16#79b18bfd#;
   pragma Export (C, u00087, "system__val_lluS");
   u00088 : constant Version_32 := 16#273bd629#;
   pragma Export (C, u00088, "system__val_utilB");
   u00089 : constant Version_32 := 16#20c400bb#;
   pragma Export (C, u00089, "system__val_utilS");
   u00090 : constant Version_32 := 16#bad10b33#;
   pragma Export (C, u00090, "system__exception_tracesB");
   u00091 : constant Version_32 := 16#4e42ff7b#;
   pragma Export (C, u00091, "system__exception_tracesS");
   u00092 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00092, "system__wch_conB");
   u00093 : constant Version_32 := 16#7bd9b57e#;
   pragma Export (C, u00093, "system__wch_conS");
   u00094 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00094, "system__wch_stwB");
   u00095 : constant Version_32 := 16#56c8997f#;
   pragma Export (C, u00095, "system__wch_stwS");
   u00096 : constant Version_32 := 16#002bec7b#;
   pragma Export (C, u00096, "system__wch_cnvB");
   u00097 : constant Version_32 := 16#7d197f0e#;
   pragma Export (C, u00097, "system__wch_cnvS");
   u00098 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00098, "system__wch_jisB");
   u00099 : constant Version_32 := 16#c8ae1d24#;
   pragma Export (C, u00099, "system__wch_jisS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.atomic_operations%s
   --  system.img_int%s
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.traceback%s
   --  system.traceback%b
   --  ada.characters.handling%s
   --  system.atomic_operations.test_and_set%s
   --  system.case_util%s
   --  system.os_lib%s
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.bounded_strings%s
   --  system.bounded_strings%b
   --  system.case_util%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  ada.characters.handling%b
   --  system.atomic_operations.test_and_set%b
   --  system.exception_traces%s
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap%b
   --  system.mmap.unix%s
   --  system.mmap.os_interface%b
   --  system.object_reader%s
   --  system.object_reader%b
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  graphics%s
   --  graphics%b
   --  ton_test%b
   --  END ELABORATION ORDER

end ada_main;
