/**
 * Project: BE-PUMv2
 * Package name: v2.org.analysis.apihandle.winapi.user32.functions
 * File name: SetMenuItemBitmaps.java
 * Author: Vinh Le
 */

package v2.org.analysis.apihandle.winapi.user32.functions;

import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.WinDef.HBITMAP;
import com.sun.jna.platform.win32.WinDef.HMENU;
import com.sun.jna.platform.win32.WinDef.UINT;

import v2.org.analysis.apihandle.winapi.user32.User32API;
import v2.org.analysis.apihandle.winapi.user32.User32DLL;
import v2.org.analysis.value.LongValue;
 
public class SetMenuItemBitmaps extends User32API {
	public SetMenuItemBitmaps () {
		super();
		NUM_OF_PARMS = 5;
	}

	@Override
	public void execute() {
		// Step 1: get original parameter values from stack
		long t0 = this.params.get(0);
		long t1 = this.params.get(1);
		long t2 = this.params.get(2);
		long t3 = this.params.get(3);
		long t4 = this.params.get(4);
		
		// Step 2: type conversion from C++ to Java
		HMENU hMenu = null;
		if ( t0 != 0L ) {
			hMenu = new HMENU ();
			hMenu.setPointer(new Pointer(t0));
		}
		UINT uPosition = new UINT (t1);
		UINT uFlags = new UINT (t2);
		HBITMAP hBitmapUnchecked = null;
		if ( t3 != 0L ) {
			hBitmapUnchecked = new HBITMAP ();
			hBitmapUnchecked.setPointer(new Pointer(t3));
		}
		HBITMAP hBitmapChecked = null;
		if ( t4 != 0L ) {
			hBitmapChecked = new HBITMAP ();
			hBitmapChecked.setPointer(new Pointer(t4));
		}

		// Step 3: call API function
		int ret = User32DLL.INSTANCE.SetMenuItemBitmaps (hMenu, uPosition, uFlags, hBitmapUnchecked, hBitmapChecked);
		
		// Step 4: update environment (memory & eax register)
		long value = ret;
		register.mov("eax", new LongValue(value));

	}
}