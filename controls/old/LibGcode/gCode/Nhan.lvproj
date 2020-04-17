<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="varPersistentID:{A5A53729-0855-4E77-B9BB-082B2A565954}" Type="Ref">/My Computer/LibraryGcode.lvlib/VariableShare/stateModeDevice</Property>
	<Property Name="varPersistentID:{D26C3C85-960C-410F-A30C-4407BCD8A2D6}" Type="Ref">/My Computer/LibraryGcode.lvlib/VariableShare/EMG1</Property>
	<Property Name="varPersistentID:{D6B1088C-C3E2-4AC4-85EB-690C19D17219}" Type="Ref">/My Computer/LibraryGcode.lvlib/VariableShare/gCodeArray</Property>
	<Property Name="varPersistentID:{E0E555CC-F498-4259-880F-01CDEDBB0010}" Type="Ref">/My Computer/LibraryGcode.lvlib/VariableShare/DataGetLineSerial</Property>
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
		<Item Name="LibGcode" Type="Folder">
			<Item Name="gCode.vi" Type="VI" URL="../gCode.vi"/>
			<Item Name="gCodeControl.ctl" Type="VI" URL="../../../controls/gCodeControl.ctl"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../../../Nhan/main.vi"/>
		<Item Name="LibraryGcode.lvlib" Type="Library" URL="../../../libraryGcode/LibraryGcode.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="LVSceneTextAlignment.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVSceneTextAlignment.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
			</Item>
			<Item Name="stateAutoMode.ctl" Type="VI" URL="../../../controls/stateAutoMode.ctl"/>
			<Item Name="stateModeDevice.ctl" Type="VI" URL="../../../libraryGcode/ControlGlobal/stateModeDevice.ctl"/>
			<Item Name="ScaraInverseKinematics.vi" Type="VI" URL="../../../kinematic/ScaraInverseKinematics.vi"/>
			<Item Name="Robot_definition.ctl" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Robot_definition.ctl"/>
			<Item Name="Robot_testing_instructions.ctl" Type="VI" URL="../../../LIN3D/Robot_testing_instructions.ctl"/>
			<Item Name="Robot_creation_loop_data.ctl" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Robot_creation_loop_data.ctl"/>
			<Item Name="Build robot states.ctl" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Build robot states.ctl"/>
			<Item Name="Create Robot State Machine.vi" Type="VI" URL="/C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Create Robot State Machine.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
