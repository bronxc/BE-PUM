package v2.org.analysis.apihandle.structures;
import java.util.Arrays;
import java.util.List;

import com.sun.jna.Structure;
import com.sun.jna.platform.win32.WinDef.DWORD;
import com.sun.jna.platform.win32.WinDef.HINSTANCE;
import com.sun.jna.platform.win32.WinDef.HMENU;
import com.sun.jna.platform.win32.WinDef.HWND;
import com.sun.jna.platform.win32.WinDef.LONG;
import com.sun.jna.platform.win32.WinDef.LPVOID;
 
/* 
* This class is generated automatically from PyWin32 Project - Generator Module
* Author: Le Vinh
*/
 
public  class CREATESTRUCT extends Structure {
    // Part 1: Define possible constant value, {option, this part can be empty}

    // Part 2: Define inner class type - nested type, {option, this part can be empty}

    // Part 3: Define fields of class
    public LPVOID lpCreateParams;
    public HINSTANCE hInstance;
    public HMENU hMenu;
    public HWND hwndParent;
    public int cy;
    public int cx;
    public int y;
    public int x;
    public LONG style;
    public String lpszName;
    public String lpszClass;
    public DWORD dwExStyle;

    // Part 4: List of field names
    @Override
    protected List<String> getFieldOrder() {
        return Arrays.asList(new String[] {
                "lpCreateParams", "hInstance", "hMenu", "hwndParent", "cy", "cx", "y", "x", "style", "lpszName", "lpszClass", "dwExStyle" });
    }
}