/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.advapi32.functions
 * File name: InitiateSystemShutdownEx.java
 * Author: Vinh Le
 */

package v2.org.analysis.apihandle.winapi.advapi32.functions;

import com.sun.jna.platform.win32.WinDef.BOOL;
import com.sun.jna.platform.win32.WinDef.DWORD;

import v2.org.analysis.apihandle.winapi.advapi32.Advapi32API;
import v2.org.analysis.apihandle.winapi.advapi32.Advapi32DLL;
import v2.org.analysis.value.LongValue;
 
public class InitiateSystemShutdownEx extends Advapi32API {
	public InitiateSystemShutdownEx () {
		super();
		NUM_OF_PARMS = 6;
	}

	@Override
	public void execute() {
		// Step 1: get original parameter values from stack
		long t0 = this.params.get(0);
		long t1 = this.params.get(1);
		long t2 = this.params.get(2);
		long t3 = this.params.get(3);
		long t4 = this.params.get(4);
		long t5 = this.params.get(5);
		
		// Step 2: type conversion from C++ to Java
		String lpMachineName = null;
		if ( t0 != 0L ) lpMachineName = memory.getText(this, t0);
		String lpMessage = null;
		if ( t1 != 0L ) lpMessage = memory.getText(this, t1);
		DWORD dwTimeout = new DWORD (t2);
		BOOL bForceAppsClosed = new BOOL (t3);
		BOOL bRebootAfterShutdown = new BOOL (t4);
		DWORD dwReason = new DWORD (t5);

		// Step 3: call API function
		int ret = Advapi32DLL.INSTANCE.InitiateSystemShutdownEx (lpMachineName, lpMessage, dwTimeout, bForceAppsClosed, bRebootAfterShutdown, dwReason);
		
		// Step 4: update environment (memory & eax register)
		long value = ret;
		register.mov("eax", new LongValue(value));

	}
}