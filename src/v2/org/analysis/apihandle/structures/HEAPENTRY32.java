package v2.org.analysis.apihandle.structures;
import java.util.Arrays;
import java.util.List;

import com.sun.jna.Structure;
import com.sun.jna.platform.win32.BaseTSD.SIZE_T;
import com.sun.jna.platform.win32.BaseTSD.ULONG_PTR;
import com.sun.jna.platform.win32.WinDef.DWORD;
import com.sun.jna.platform.win32.WinNT.HANDLE;
 
/* 
* This class is generated automatically from PyWin32 Project - Generator Module
* Author: Le Vinh
*/
 
public  class HEAPENTRY32 extends Structure {
    // Part 1: Define possible constant value, {option, this part can be empty}

    // Part 2: Define inner class type - nested type, {option, this part can be empty}

    // Part 3: Define fields of class
    public SIZE_T dwSize;
    public HANDLE hHandle;
    public ULONG_PTR dwAddress;
    public SIZE_T dwBlockSize;
    public DWORD dwFlags;
    public DWORD dwLockCount;
    public DWORD dwResvd;
    public DWORD th32ProcessID;
    public ULONG_PTR th32HeapID;

    // Part 4: List of field names
    @Override
    protected List<String> getFieldOrder() {
        return Arrays.asList(new String[] {
                "dwSize", "hHandle", "dwAddress", "dwBlockSize", "dwFlags", "dwLockCount", "dwResvd", "th32ProcessID", "th32HeapID" });
    }
}
