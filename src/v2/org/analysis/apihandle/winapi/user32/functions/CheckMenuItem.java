/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.user32.functions
 * File name: CheckMenuItem.java
 * Author: Vinh Le
 */

package v2.org.analysis.apihandle.winapi.user32.functions;

import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.WinDef.HMENU;
import com.sun.jna.platform.win32.WinDef.UINT;

import v2.org.analysis.apihandle.winapi.user32.User32API;
import v2.org.analysis.apihandle.winapi.user32.User32DLL;
import v2.org.analysis.value.LongValue;
 
public class CheckMenuItem extends User32API {
	public CheckMenuItem () {
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
		HMENU hmenu = null;
		if ( t0 != 0L ) {
			hmenu = new HMENU ();
			hmenu.setPointer(new Pointer(t0));
		}
		UINT uIDCheckItem = new UINT (t1);
		UINT uCheck = new UINT (t2);

		// Step 3: call API function
		int ret = User32DLL.INSTANCE.CheckMenuItem (hmenu, uIDCheckItem, uCheck);
		
		// Step 4: update environment (memory & eax register)
		long value = ret;
		register.mov("eax", new LongValue(value));

	}
}