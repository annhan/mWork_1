<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="varPersistentID:{A5A53729-0855-4E77-B9BB-082B2A565954}" Type="Ref">/My Computer/libVariable.lvlib/stateModeDevice</Property>
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
			<Item Name="stateLoopEvent.ctl" Type="VI" URL="../stateLoopEvent.ctl"/>
			<Item Name="ButtonWithImage.ctl" Type="VI" URL="../controls/ButtonWithImage.ctl"/>
			<Item Name="CommandQueue.ctl" Type="VI" URL="../controls/CommandQueue.ctl"/>
			<Item Name="state_board_control.ctl" Type="VI" URL="../controls/state_board_control.ctl"/>
			<Item Name="Control 2.ctl" Type="VI" URL="../Control 2.ctl"/>
			<Item Name="gCodeControl.ctl" Type="VI" URL="../controls/gCodeControl.ctl"/>
			<Item Name="mCodeConfig.ctl" Type="VI" URL="../controls/mCodeConfig.ctl"/>
			<Item Name="UartTypeDataGet.ctl" Type="VI" URL="../libraryGcode/control/UartTypeDataGet.ctl"/>
			<Item Name="QueueControl.ctl" Type="VI" URL="../controls/QueueControl.ctl"/>
			<Item Name="StateMachineAuto.ctl" Type="VI" URL="../ClassStateAuto/control/StateMachineAuto.ctl"/>
		</Item>
		<Item Name="LibGcode" Type="Folder">
			<Item Name="gCode.vi" Type="VI" URL="../LibGcode/gCode/gCode.vi"/>
			<Item Name="GCode_SetZero_G92.vi" Type="VI" URL="../LibGcode/gCode/GCode_SetZero_G92.vi"/>
			<Item Name="mCode.vi" Type="VI" URL="../LibGcode/gCode/mCode.vi"/>
			<Item Name="SET_PWM.vi" Type="VI" URL="../LibGcode/gCode/SET_PWM.vi"/>
			<Item Name="TachDataGcode_Config.vi" Type="VI" URL="../LibGcode/gCode/TachDataGcode_Config.vi"/>
			<Item Name="TachDataGcode_PosToQueue.vi" Type="VI" URL="../LibGcode/gCode/TachDataGcode_PosToQueue.vi"/>
			<Item Name="TurnOnOffSoleNoid.vi" Type="VI" URL="../LibGcode/gCode/TurnOnOffSoleNoid.vi"/>
			<Item Name="gcodeArray.ctl" Type="VI" URL="../controls/gcodeArray.ctl"/>
		</Item>
		<Item Name="Queue" Type="Folder">
			<Item Name="GetStopEMG-Queuevi.vi" Type="VI" URL="../LibGcode/Queue/GetStopEMG-Queuevi.vi"/>
			<Item Name="putDataToQueueStateBoardvi.vi" Type="VI" URL="../LibGcode/Queue/putDataToQueueStateBoardvi.vi"/>
		</Item>
		<Item Name="ReadSerial" Type="Folder">
			<Item Name="MK4DueReturnState.vi" Type="VI" URL="../LibGcode/Serial/MK4DueReturnState.vi"/>
		</Item>
		<Item Name="Timeout" Type="Folder"/>
		<Item Name="GLOBAL" Type="Folder">
			<Item Name="GLOBAL_STATE.vi" Type="VI" URL="../global/GLOBAL_STATE.vi"/>
		</Item>
		<Item Name="libVariable.lvlib" Type="Library" URL="../Nhan/libVariable.lvlib"/>
		<Item Name="main.vi" Type="VI" URL="../Nhan/main.vi"/>
		<Item Name="globalStartAuto.vi" Type="VI" URL="../global/globalStartAuto.vi"/>
		<Item Name="MARLIN.lvclass" Type="LVClass" URL="../ClassTesst/MARLIN.lvclass"/>
		<Item Name="Untitled 2.vi" Type="VI" URL="../ClassTesst/Untitled 2.vi"/>
		<Item Name="NI_Robotics_AnalyticKinematics.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/NI_Robotics_AnalyticKinematics.lvlib"/>
		<Item Name="LibraryGcode.lvlib" Type="Library" URL="../libraryGcode/LibraryGcode.lvlib"/>
		<Item Name="UartStatusBusy.ctl" Type="VI" URL="../libraryGcode/control/UartStatusBusy.ctl"/>
		<Item Name="ListMcodeConfig.ctl" Type="VI" URL="../libraryGcode/control/ListMcodeConfig.ctl"/>
		<Item Name="TypeFirmwareControl.ctl" Type="VI" URL="../libraryGcode/control/TypeFirmwareControl.ctl"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="LVSceneTextAlignment.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVSceneTextAlignment.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_Robotics_3DKinematics.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Kinematics/Plotting/NI_Robotics_3DKinematics.lvlib"/>
				<Item Name="NI_Robotics_Serial Robot Arm.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Robot/NI_Robotics_Serial Robot Arm.lvclass"/>
				<Item Name="NI_Kinematics.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Kinematics/NI_Kinematics.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_Robotics_Link.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Link/NI_Robotics_Link.lvclass"/>
				<Item Name="NI_Robotics Utilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Utilities/NI_Robotics Utilities.lvlib"/>
				<Item Name="DH Dynamic Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/robotics/Kinematics/DH Dynamic Parameters.ctl"/>
				<Item Name="DH Kinematic Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/robotics/Kinematics/DH Kinematic Parameters.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Robotics_6R Type 1 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/6R/Type 1/NI_Robotics_6R Type 1 Serial Arm Class.lvclass"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Robotics_Analytical Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/Generic/NI_Robotics_Analytical Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_SCARA Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/SCARA/NI_Robotics_SCARA Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_6R Type 3 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/6R/Type 3/NI_Robotics_6R Type 3 Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_6R Type 2 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/6R/Type 2/NI_Robotics_6R Type 2 Serial Arm Class.lvclass"/>
				<Item Name="NI_Robotics_5R Type 1 Serial Arm Class.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Kinematics/Analytical/5R/Type 1/NI_Robotics_5R Type 1 Serial Arm Class.lvclass"/>
				<Item Name="NI_AAL_Angle.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_Angle.lvlib"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
			</Item>
			<Item Name="AutoProgramState.vi" Type="VI" URL="../LibGcode/auto/AutoProgramState.vi"/>
			<Item Name="checkMCodeConfig.vi" Type="VI" URL="../LibGcode/gCode/checkMCodeConfig.vi"/>
			<Item Name="Delete1Line.vi" Type="VI" URL="../LibGcode/XulyString/Delete1Line.vi"/>
			<Item Name="GCode File to Array.vi" Type="VI" URL="../LibGcode/gCode/GCode File to Array.vi"/>
			<Item Name="jogMode.vi" Type="VI" URL="../LibGcode/gCode/jogMode.vi"/>
			<Item Name="SaveFile.vi" Type="VI" URL="../LibGcode/XulyString/SaveFile.vi"/>
			<Item Name="stateAutoMode.ctl" Type="VI" URL="../controls/stateAutoMode.ctl"/>
			<Item Name="stateModeDevice.ctl" Type="VI" URL="../controls/stateModeDevice.ctl"/>
			<Item Name="ScaraInverseKinematics.vi" Type="VI" URL="../kinematic/ScaraInverseKinematics.vi"/>
			<Item Name="Robot_definition.ctl" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Robot_definition.ctl"/>
			<Item Name="Robot_testing_instructions.ctl" Type="VI" URL="../LIN3D/Robot_testing_instructions.ctl"/>
			<Item Name="Robot_creation_loop_data.ctl" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Robot_creation_loop_data.ctl"/>
			<Item Name="Build robot states.ctl" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Build robot states.ctl"/>
			<Item Name="Create Robot State Machine.vi" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Create Robot State Machine.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
