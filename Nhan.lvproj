<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="varPersistentID:{A5A53729-0855-4E77-B9BB-082B2A565954}" Type="Ref">/My Computer/libVariable.lvlib/stateModeDevice</Property>
	<Property Name="varPersistentID:{B13F264D-3E3E-4479-A427-81753E6F1A89}" Type="Ref">/My Computer/libVariable.lvlib/state_board_STM1</Property>
	<Property Name="varPersistentID:{D26C3C85-960C-410F-A30C-4407BCD8A2D6}" Type="Ref">/My Computer/libVariable.lvlib/EMG1</Property>
	<Property Name="varPersistentID:{D6B1088C-C3E2-4AC4-85EB-690C19D17219}" Type="Ref">/My Computer/libVariable.lvlib/gCodeArray</Property>
	<Property Name="varPersistentID:{E0E555CC-F498-4259-880F-01CDEDBB0010}" Type="Ref">/My Computer/libVariable.lvlib/DataGetLineSerial</Property>
	<Item Name="lib" Type="Target Folder"/>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Auto" Type="Folder">
			<Item Name="checkauto.vi" Type="VI" URL="../LibGcode/auto/checkauto.vi"/>
		</Item>
		<Item Name="Control" Type="Folder">
			<Item Name="ButtonWithImage.ctl" Type="VI" URL="../controls/ButtonWithImage.ctl"/>
			<Item Name="CommandQueue.ctl" Type="VI" URL="../controls/CommandQueue.ctl"/>
			<Item Name="state_board_control.ctl" Type="VI" URL="../controls/state_board_control.ctl"/>
			<Item Name="Control 2.ctl" Type="VI" URL="../Control 2.ctl"/>
			<Item Name="gCodeControl.ctl" Type="VI" URL="../controls/gCodeControl.ctl"/>
			<Item Name="mCodeConfig.ctl" Type="VI" URL="../controls/mCodeConfig.ctl"/>
			<Item Name="STATE_MK4DUERETURNSTATE.ctl" Type="VI" URL="../controls/STATE_MK4DUERETURNSTATE.ctl"/>
			<Item Name="QueueControl.ctl" Type="VI" URL="../controls/QueueControl.ctl"/>
		</Item>
		<Item Name="LibGcode" Type="Folder">
			<Item Name="gCode.vi" Type="VI" URL="../LibGcode/gCode/gCode.vi"/>
			<Item Name="GCode_SetZero_G92.vi" Type="VI" URL="../LibGcode/gCode/GCode_SetZero_G92.vi"/>
			<Item Name="mCode.vi" Type="VI" URL="../LibGcode/gCode/mCode.vi"/>
			<Item Name="SET_PWM.vi" Type="VI" URL="../LibGcode/gCode/SET_PWM.vi"/>
			<Item Name="TachDataGcode_Config.vi" Type="VI" URL="../LibGcode/gCode/TachDataGcode_Config.vi"/>
			<Item Name="TachDataGcode_PosToQueue.vi" Type="VI" URL="../LibGcode/gCode/TachDataGcode_PosToQueue.vi"/>
			<Item Name="TurnOnOffSoleNoid.vi" Type="VI" URL="../LibGcode/gCode/TurnOnOffSoleNoid.vi"/>
		</Item>
		<Item Name="Queue" Type="Folder">
			<Item Name="GetStopEMG-Queuevi.vi" Type="VI" URL="../LibGcode/Queue/GetStopEMG-Queuevi.vi"/>
			<Item Name="putDataToQueueStateBoardvi.vi" Type="VI" URL="../LibGcode/Queue/putDataToQueueStateBoardvi.vi"/>
		</Item>
		<Item Name="ReadSerial" Type="Folder">
			<Item Name="MK4DueReturnState.vi" Type="VI" URL="../LibGcode/Serial/MK4DueReturnState.vi"/>
			<Item Name="ReadDataMK4.vi" Type="VI" URL="../LibGcode/Serial/ReadDataMK4.vi"/>
			<Item Name="writeFromeQueue.vi" Type="VI" URL="../LibGcode/Serial/writeFromeQueue.vi"/>
			<Item Name="XuLyStringData.vi" Type="VI" URL="../LibGcode/Serial/XuLyStringData.vi"/>
		</Item>
		<Item Name="Timeout" Type="Folder">
			<Item Name="TIMEOUT_SEND_CHECK_M114.vi" Type="VI" URL="../LibGcode/timeout/TIMEOUT_SEND_CHECK_M114.vi"/>
		</Item>
		<Item Name="libVariable.lvlib" Type="Library" URL="../Nhan/libVariable.lvlib"/>
		<Item Name="main.vi" Type="VI" URL="../Nhan/main.vi"/>
		<Item Name="gcodeArray.ctl" Type="VI" URL="../controls/gcodeArray.ctl"/>
		<Item Name="globalStartAuto.vi" Type="VI" URL="../global/globalStartAuto.vi"/>
		<Item Name="stateLoopEvent.ctl" Type="VI" URL="../stateLoopEvent.ctl"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
			</Item>
			<Item Name="AutoProgram.vi" Type="VI" URL="../LibGcode/auto/AutoProgram.vi"/>
			<Item Name="checkMCodeConfig.vi" Type="VI" URL="../LibGcode/gCode/checkMCodeConfig.vi"/>
			<Item Name="Delete1Line.vi" Type="VI" URL="../LibGcode/XulyString/Delete1Line.vi"/>
			<Item Name="finduntracComport.vi" Type="VI" URL="../mWorkToolkit/finduntracComport.vi"/>
			<Item Name="GCode File to Array.vi" Type="VI" URL="../LibGcode/gCode/GCode File to Array.vi"/>
			<Item Name="initCOMPORT.vi" Type="VI" URL="../LibGcode/Comport/initCOMPORT.vi"/>
			<Item Name="MANUALGCODE.vi" Type="VI" URL="../LibGcode/gCode/MANUALGCODE.vi"/>
			<Item Name="SaveFile.vi" Type="VI" URL="../LibGcode/XulyString/SaveFile.vi"/>
			<Item Name="SerialUltra.vi" Type="VI" URL="../mWorkToolkit/libSerial/SerialUltra.vi"/>
			<Item Name="stateAutoMode.ctl" Type="VI" URL="../controls/stateAutoMode.ctl"/>
			<Item Name="stateModeDevice.ctl" Type="VI" URL="../controls/stateModeDevice.ctl"/>
			<Item Name="stateSerialUltra.ctl" Type="VI" URL="../mWorkToolkit/libSerial/stateSerialUltra.ctl"/>
			<Item Name="STATEUART.ctl" Type="VI" URL="../mWorkToolkit/libSerial/STATEUART.ctl"/>
			<Item Name="TIMEOUT_CONNECT_TO_BOARD.vi" Type="VI" URL="../LibGcode/timeout/TIMEOUT_CONNECT_TO_BOARD.vi"/>
			<Item Name="ScaraInverseKinematics.vi" Type="VI" URL="../kinematic/ScaraInverseKinematics.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
