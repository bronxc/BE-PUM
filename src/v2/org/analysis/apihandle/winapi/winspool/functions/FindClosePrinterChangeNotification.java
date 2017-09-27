/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.winspool.functions
 * File name: FindClosePrinterChangeNotification.java
 * Author: Vinh Le
 */

package v2.org.analysis.apihandle.winapi.winspool.functions;

import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.WinNT.HANDLE;

import v2.org.analysis.apihandle.winapi.winspool.WinspoolAPI;
import v2.org.analysis.apihandle.winapi.winspool.WinspoolDLL;
import v2.org.analysis.value.LongValue;
 
public class FindClosePrinterChangeNotification extends WinspoolAPI {
	public FindClosePrinterChangeNotification () {
		super();
		NUM_OF_PARMS = 1;
	}

	@Override
	public void execute() {
		// Step 1: get original parameter values from stack
		long t0 = this.params.get(0);
		
		// Step 2: type conversion from C++ to Java
		HANDLE hChange = null;
		if ( t0 != 0L ) {
			hChange = new HANDLE ();
			hChange.setPointer(new Pointer(t0));
		}

		// Step 3: call API function
		int ret = WinspoolDLL.INSTANCE.FindClosePrinterChangeNotification (hChange);
		
		// Step 4: update environment (memory & eax register)
		long value = ret;
		register.mov("eax", new LongValue(value));

	}
}