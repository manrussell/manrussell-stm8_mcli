# ST Visual Debugger Generated MAKE File, based on mcli_stm8_proj.stp

ifeq ($(CFG), )
CFG=Debug
$(warning ***No configuration specified. Defaulting to $(CFG)***)
endif

ToolsetRoot=C:\PROGRA~2\COSMIC\FSE_CO~1\CXSTM8
ToolsetBin=C:\Program Files (x86)\COSMIC\FSE_Compilers\CXSTM8
ToolsetInc=C:\Program Files (x86)\COSMIC\FSE_Compilers\CXSTM8\Hstm8
ToolsetLib=C:\Program Files (x86)\COSMIC\FSE_Compilers\CXSTM8\Lib
ToolsetIncOpts=-i"C:\Program Files (x86)\COSMIC\FSE_Compilers\CXSTM8\Hstm8" 
ToolsetLibOpts=-l"C:\Program Files (x86)\COSMIC\FSE_Compilers\CXSTM8\Lib" 
ObjectExt=o
OutputExt=elf
InputName=$(basename $(notdir $<))


# 
# Debug
# 
ifeq "$(CFG)" "Debug"


OutputPath=Debug
ProjectSFile=mcli_stm8_proj
TargetSName=mcli_stm8_proj
TargetFName=mcli_stm8_proj.elf
IntermPath=$(dir $@)
CFLAGS_PRJ=$(ToolsetBin)\cxstm8  -iinc +debug -pxp -no -l +mods0 -pp $(ToolsetIncOpts) -cl$(IntermPath:%\=%) -co$(IntermPath:%\=%) $< 
ASMFLAGS_PRJ=$(ToolsetBin)\castm8  -xx -l $(ToolsetIncOpts) -o$(IntermPath)$(InputName).$(ObjectExt) $<

all : $(OutputPath) mcli_stm8_proj.elf

$(OutputPath) : 
	if not exist $(OutputPath)/ mkdir $(OutputPath)

Debug\m_cli.$(ObjectExt) : src\m_cli.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\uart_stm8.h inc\mlib.h inc\tim_4_stm8.h inc\stm8s103f3.h inc\stm8s103f.h inc\m_cli.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Debug\main.$(ObjectExt) : src\main.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\mlib.h inc\uart_stm8.h inc\tim_4_stm8.h inc\stm8s103f3.h inc\stm8s103f.h inc\m_cli.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Debug\nicked_miniio.$(ObjectExt) : src\nicked_miniio.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\mlib.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Debug\serial_terminal.$(ObjectExt) : src\serial_terminal.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\serial_terminal.h inc\mlib.h inc\uart_stm8.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Debug\tim_4_stm8.$(ObjectExt) : src\tim_4_stm8.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\tim_4_stm8.h inc\stm8s103f3.h inc\stm8s103f.h inc\mlib.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Debug\uart_stm8.$(ObjectExt) : src\uart_stm8.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\stm8s103f.h inc\uart_stm8.h inc\mlib.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Debug\stm8_interrupt_vector.$(ObjectExt) : stm8_interrupt_vector.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

mcli_stm8_proj.elf :  $(OutputPath)\m_cli.o $(OutputPath)\main.o $(OutputPath)\nicked_miniio.o $(OutputPath)\serial_terminal.o $(OutputPath)\tim_4_stm8.o $(OutputPath)\uart_stm8.o $(OutputPath)\stm8_interrupt_vector.o $(OutputPath)\mcli_stm8_proj.lkf
	$(ToolsetBin)\clnk  -m $(OutputPath)\$(TargetSName).map $(ToolsetLibOpts) -o $(OutputPath)\$(TargetSName).sm8 $(OutputPath)\$(TargetSName).lkf 
	$(ToolsetBin)\cvdwarf  $(OutputPath)\$(TargetSName).sm8 

	$(ToolsetBin)\chex  -o $(OutputPath)\$(TargetSName).s19 $(OutputPath)\$(TargetSName).sm8
clean : 
	-@erase $(OutputPath)\m_cli.o
	-@erase $(OutputPath)\main.o
	-@erase $(OutputPath)\nicked_miniio.o
	-@erase $(OutputPath)\serial_terminal.o
	-@erase $(OutputPath)\tim_4_stm8.o
	-@erase $(OutputPath)\uart_stm8.o
	-@erase $(OutputPath)\stm8_interrupt_vector.o
	-@erase $(OutputPath)\mcli_stm8_proj.elf
	-@erase $(OutputPath)\mcli_stm8_proj.map
	-@erase $(OutputPath)\mcli_stm8_proj.st7
	-@erase $(OutputPath)\mcli_stm8_proj.s19
	-@erase $(OutputPath)\m_cli.ls
	-@erase $(OutputPath)\main.ls
	-@erase $(OutputPath)\nicked_miniio.ls
	-@erase $(OutputPath)\serial_terminal.ls
	-@erase $(OutputPath)\tim_4_stm8.ls
	-@erase $(OutputPath)\uart_stm8.ls
	-@erase $(OutputPath)\stm8_interrupt_vector.ls
endif

# 
# Release
# 
ifeq "$(CFG)" "Release"


OutputPath=Release
ProjectSFile=mcli_stm8_proj
TargetSName=mcli_stm8_proj
TargetFName=mcli_stm8_proj.elf
IntermPath=$(dir $@)
CFLAGS_PRJ=$(ToolsetBin)\cxstm8  -iinc +mods0 -pp $(ToolsetIncOpts) -cl$(IntermPath:%\=%) -co$(IntermPath:%\=%) $< 
ASMFLAGS_PRJ=$(ToolsetBin)\castm8  $(ToolsetIncOpts) -o$(IntermPath)$(InputName).$(ObjectExt) $<

all : $(OutputPath) mcli_stm8_proj.elf

$(OutputPath) : 
	if not exist $(OutputPath)/ mkdir $(OutputPath)

Release\m_cli.$(ObjectExt) : src\m_cli.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\uart_stm8.h inc\mlib.h inc\tim_4_stm8.h inc\stm8s103f3.h inc\stm8s103f.h inc\m_cli.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Release\main.$(ObjectExt) : src\main.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\mlib.h inc\uart_stm8.h inc\tim_4_stm8.h inc\stm8s103f3.h inc\stm8s103f.h inc\m_cli.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Release\nicked_miniio.$(ObjectExt) : src\nicked_miniio.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\mlib.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Release\serial_terminal.$(ObjectExt) : src\serial_terminal.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\serial_terminal.h inc\mlib.h inc\uart_stm8.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Release\tim_4_stm8.$(ObjectExt) : src\tim_4_stm8.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\tim_4_stm8.h inc\stm8s103f3.h inc\stm8s103f.h inc\mlib.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Release\uart_stm8.$(ObjectExt) : src\uart_stm8.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h inc\stm8s103f.h inc\uart_stm8.h inc\mlib.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

Release\stm8_interrupt_vector.$(ObjectExt) : stm8_interrupt_vector.c ..\..\..\..\..\PROGRA~2\cosmic\FSE_CO~1\cxstm8\hstm8\mods0.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

mcli_stm8_proj.elf :  $(OutputPath)\m_cli.o $(OutputPath)\main.o $(OutputPath)\nicked_miniio.o $(OutputPath)\serial_terminal.o $(OutputPath)\tim_4_stm8.o $(OutputPath)\uart_stm8.o $(OutputPath)\stm8_interrupt_vector.o $(OutputPath)\mcli_stm8_proj.lkf
	$(ToolsetBin)\clnk  $(ToolsetLibOpts) -o $(OutputPath)\$(TargetSName).sm8 $(OutputPath)\$(TargetSName).lkf 
	$(ToolsetBin)\cvdwarf  $(OutputPath)\$(TargetSName).sm8 

	$(ToolsetBin)\chex  -o $(OutputPath)\$(TargetSName).s19 $(OutputPath)\$(TargetSName).sm8
clean : 
	-@erase $(OutputPath)\m_cli.o
	-@erase $(OutputPath)\main.o
	-@erase $(OutputPath)\nicked_miniio.o
	-@erase $(OutputPath)\serial_terminal.o
	-@erase $(OutputPath)\tim_4_stm8.o
	-@erase $(OutputPath)\uart_stm8.o
	-@erase $(OutputPath)\stm8_interrupt_vector.o
	-@erase $(OutputPath)\mcli_stm8_proj.elf
	-@erase $(OutputPath)\mcli_stm8_proj.map
	-@erase $(OutputPath)\mcli_stm8_proj.st7
	-@erase $(OutputPath)\mcli_stm8_proj.s19
	-@erase $(OutputPath)\m_cli.ls
	-@erase $(OutputPath)\main.ls
	-@erase $(OutputPath)\nicked_miniio.ls
	-@erase $(OutputPath)\serial_terminal.ls
	-@erase $(OutputPath)\tim_4_stm8.ls
	-@erase $(OutputPath)\uart_stm8.ls
	-@erase $(OutputPath)\stm8_interrupt_vector.ls
endif
