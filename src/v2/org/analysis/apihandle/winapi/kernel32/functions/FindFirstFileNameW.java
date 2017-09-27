/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.kernel32.functions
 * File name: FindFirstFileNameW.java
 * Author: Vinh Le
 */

package v2.org.analysis.apihandle.winapi.kernel32.functions;

import com.sun.jna.platform.win32.WinDef.CHAR;
import com.sun.jna.platform.win32.WinDef.CHARByReference;
import com.sun.jna.platform.win32.WinDef.DWORD;
import com.sun.jna.ptr.IntByReference;

import v2.org.analysis.apihandle.winapi.kernel32.Kernel32API;
import v2.org.analysis.apihandle.winapi.kernel32.Kernel32DLL;
import v2.org.analysis.value.LongValue;
 
public class FindFirstFileNameW extends Kernel32API {
	public FindFirstFileNameW () {
		super();
		NUM_OF_PARMS = 4;
	}

	@Override
	public void execute() {
		// Step 1: get original parameter values from stack
		long t0 = this.params.get(0);
		long t1 = this.params.get(1);
		long t2 = this.params.get(2);
		long t3 = this.params.get(3);
		
		// Step 2: type conversion from C++ to Java
		CHARByReference lpFileName = new CHARByReference (new CHAR(t0));
		DWORD dwFlags = new DWORD (t1);
		IntByReference StringLength = new IntByReference ((int) t2);
		char[] LinkName = null;
		if ( t3 != 0L ) LinkName = new char[(int) t2];
		for (int i = 0; i < LinkName.length; i++) {
			LinkName [i] = (char) ((LongValue) memory.getWordMemoryValue (t3)).getValue();
			t3 += 2;
		}

		// Step 3: call API function
		int ret = Kernel32DLL.INSTANCE.FindFirstFileNameW (lpFileName, dwFlags, StringLength, LinkName);
		
		// Step 4: update environment (memory & eax register)
		long value = ret;
		register.mov("eax", new LongValue(value));

	}
}