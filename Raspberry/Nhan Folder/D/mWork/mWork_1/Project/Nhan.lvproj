<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
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
		<Item Name="LibraryGcode.lvlib" Type="Library" URL="../libraryGcode/LibraryGcode.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
			</Item>
			<Item Name="stateModeDevice.ctl" Type="VI" URL="../libraryGcode/ControlGlobal/stateModeDevice.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="Raspberry Pi 2 B" Type="Raspberry Pi 2 B">
		<Property Name="alias.name" Type="Str">Raspberry Pi 2 B</Property>
		<Property Name="alias.value" Type="Str">192.168.11.3</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;LINX_DEVICE,True;LINX_DEVICE_FAMILY,4;LINX_DEVICE_ID,3;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path"></Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="DetachButton.vi" Type="VI" URL="../xBox360/DetachButton.vi"/>
		<Item Name="exampleXbox.vi" Type="VI" URL="../xBox360/exampleXbox.vi"/>
		<Item Name="GetXbox.vi" Type="VI" URL="../xBox360/GetXbox.vi"/>
		<Item Name="LeapMotion.vi" Type="VI" URL="../LeapMotion/Test01/LeapMotion.vi"/>
		<Item Name="LibraryGcode.lvlib" Type="Library" URL="../libraryGcode/LibraryGcode.lvlib"/>
		<Item Name="main.vi" Type="VI" URL="../Nhan/main.vi"/>
		<Item Name="mosbus.vi" Type="VI" URL="../TestModbus/mosbus.vi"/>
		<Item Name="subPos.vi" Type="VI" URL="../LeapMotion/Test01/subPos.vi"/>
		<Item Name="UART.vi" Type="VI" URL="../Raspberry/Bai1UART/UART.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Close.vi" Type="VI" URL="/&lt;vilib&gt;/MakerHub/Leap/Public/Close.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Gesture State.ctl" Type="VI" URL="/&lt;vilib&gt;/MakerHub/Leap/Private/Type Defs/Gesture State.ctl"/>
				<Item Name="LMH-LINX.lvlib" Type="Library" URL="/&lt;vilib&gt;/MakerHub/LINX/LMH-LINX.lvlib"/>
				<Item Name="LVSceneTextAlignment.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVSceneTextAlignment.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Open.vi" Type="VI" URL="/&lt;vilib&gt;/MakerHub/Leap/Public/Open.vi"/>
				<Item Name="Read 1 Hand Position Velocity.vi" Type="VI" URL="/&lt;vilib&gt;/MakerHub/Leap/Public/Instance VIs/Read 1 Hand Position Velocity.vi"/>
				<Item Name="Read 1 Key Tap Position.vi" Type="VI" URL="/&lt;vilib&gt;/MakerHub/Leap/Public/Gestures/Key Tap/Instance VIs/Read 1 Key Tap Position.vi"/>
				<Item Name="Read Hand Position Velocity.vi" Type="VI" URL="/&lt;vilib&gt;/MakerHub/Leap/Public/Read Hand Position Velocity.vi"/>
				<Item Name="Read Key Tap Position.vi" Type="VI" URL="/&lt;vilib&gt;/MakerHub/Leap/Public/Gestures/Key Tap/Read Key Tap Position.vi"/>
				<Item Name="Reset myRIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Utilities/vis/Reset myRIO.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="Build robot states.ctl" Type="VI" URL="../../../../../C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Build robot states.ctl"/>
			<Item Name="Create Robot State Machine.vi" Type="VI" URL="../../../../../C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Create Robot State Machine.vi"/>
			<Item Name="liblinxdevice.dll" Type="Document" URL="liblinxdevice.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Robot_creation_loop_data.ctl" Type="VI" URL="../../../../../C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Robot_creation_loop_data.ctl"/>
			<Item Name="Robot_definition.ctl" Type="VI" URL="../../../../../C/Users/annha/Desktop/Inverse Kinematic - demo/controls/Robot_definition.ctl"/>
			<Item Name="Robot_testing_instructions.ctl" Type="VI" URL="../LIN3D/Robot_testing_instructions.ctl"/>
			<Item Name="ScaraInverseKinematics.vi" Type="VI" URL="../kinematic/ScaraInverseKinematics.vi"/>
			<Item Name="stateModeDevice.ctl" Type="VI" URL="../libraryGcode/ControlGlobal/stateModeDevice.ctl"/>
			<Item Name="XInput9_1_0.dll" Type="Document" URL="/C/Windows/System32/XInput9_1_0.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
