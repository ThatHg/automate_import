#SingleInstance Force
#Requires AutoHotkey v2
#include UIA-v2\Lib\UIA.ahk

Loop
{
    perforce_hwnd := WinWait("Perforce Checkout")
    if perforce_hwnd
    {
        perforce_window := UIA.ElementFromHandle(perforce_hwnd)

        button := perforce_window.FindElement({ClassName:"Button", Name:"Make Writable"})
        button.Click()
    }
    
    Sleep 300
}

