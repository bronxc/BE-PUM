/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.kernel32.functions
 * File name: SetFileIoOverlappedRange.java
 * Author: Vinh Le
 */

package v2.org.analysis.apihandle.winapi.kernel32.functions;

import v2.org.analysis.apihandle.winapi.kernel32.Kernel32API;
import v2.org.analysis.apihandle.winapi.kernel32.Kernel32DLL;
import v2.org.analysis.value.LongValue;

import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.WinDef.ULONG;
import com.sun.jna.platform.win32.WinNT.HANDLE;
 
public class SetFileIoOverlappedRange extends Kernel32API {
	public SetFileIoOverlappedRange () {
		super();
		NUM_OF_PARMS = 3;
	}

	@Override
	public void execute() {
		// Step 1: get original parameter values from stack
		long t0 = this.params.get(0);
		long t1 = this.params.get(1);
		long t2 = this.params.get(2);
		
		// Step 2: type conversion from C++ to Java
		HANDLE FileHandle = null;
		if ( t0 != 0L ) {
			FileHandle = new HANDLE ();
			FileHandle.setPointer(new Pointer(t0));
		}
		byte OverlappedRangeStart = (byte) t1;
		ULONG Length = new ULONG ((int) t2);

		// Step 3: call API function
		int ret = Kernel32DLL.INSTANCE.SetFileIoOverlappedRange (FileHandle, OverlappedRangeStart, Length);
		
		// Step 4: update environment (memory & eax register)
		long value = ret;
		register.mov("eax", new LongValue(value));

	}
}