/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.user32.functions
 * File name: GetClipCursor.java
 * Author: Vinh Le
 */

package v2.org.analysis.apihandle.winapi.user32.functions;

import com.sun.jna.platform.win32.WinDef.RECT;

import v2.org.analysis.apihandle.winapi.user32.User32API;
import v2.org.analysis.apihandle.winapi.user32.User32DLL;
import v2.org.analysis.value.LongValue;
 
public class GetClipCursor extends User32API {
	public GetClipCursor () {
		super();
		NUM_OF_PARMS = 1;
	}

	@Override
	public void execute() {
		// Step 1: get original parameter values from stack
		long t0 = this.params.get(0);
		
		// Step 2: type conversion from C++ to Java
		RECT lpRect = new RECT ();

		// Step 3: call API function
		int ret = User32DLL.INSTANCE.GetClipCursor (lpRect);
		
		// Step 4: update environment (memory & eax register)
		long value = ret;
		register.mov("eax", new LongValue(value));
		t0 = this.params.get(0);
		memory.setDoubleWordMemoryValue (t0, new LongValue(lpRect.left));
		t0 += 4;
		memory.setDoubleWordMemoryValue (t0, new LongValue(lpRect.top));
		t0 += 4;
		memory.setDoubleWordMemoryValue (t0, new LongValue(lpRect.right));
		t0 += 4;
		memory.setDoubleWordMemoryValue (t0, new LongValue(lpRect.bottom));
		t0 += 4;

	}
}