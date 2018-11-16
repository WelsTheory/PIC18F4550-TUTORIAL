Imports System
Imports System.Threading
Imports System.Runtime.InteropServices


Module HIDDLLInterface
    ' this is the interface to the HID controller DLL - you should not
    ' normally need to change anything in this file.
    '
    ' WinProc() calls your main form 'event' procedures - these are currently
    ' set to..
    '
    ' MainForm.OnPlugged(ByVal pHandle as long)
    ' MainForm.OnUnplugged(ByVal pHandle as long)
    ' MainForm.OnChanged()
    ' MainForm.OnRead(ByVal pHandle as long)


    ' HID interface API declarations...
    Declare Function hidConnect Lib "mcHID.dll" Alias "Connect" (ByVal pHostWin As Integer) As Boolean
    Declare Function hidDisconnect Lib "mcHID.dll" Alias "Disconnect" () As Boolean
    Declare Function hidGetItem Lib "mcHID.dll" Alias "GetItem" (ByVal pIndex As Integer) As Integer
    Declare Function hidGetItemCount Lib "mcHID.dll" Alias "GetItemCount" () As Integer
    Declare Function hidRead Lib "mcHID.dll" Alias "Read" (ByVal pHandle As Integer, ByRef pData As Byte) As Boolean
    Declare Function hidWrite Lib "mcHID.dll" Alias "Write" (ByVal pHandle As Integer, ByRef pData As Byte) As Boolean
    Declare Function hidReadEx Lib "mcHID.dll" Alias "ReadEx" (ByVal pVendorID As Integer, ByVal pProductID As Integer, ByRef pData As Byte) As Boolean
    Declare Function hidWriteEx Lib "mcHID.dll" Alias "WriteEx" (ByVal pVendorID As Integer, ByVal pProductID As Integer, ByRef pData As Byte) As Boolean
    Declare Function hidGetHandle Lib "mcHID.dll" Alias "GetHandle" (ByVal pVendoID As Integer, ByVal pProductID As Integer) As Integer
    Declare Function hidGetVendorID Lib "mcHID.dll" Alias "GetVendorID" (ByVal pHandle As Integer) As Integer
    Declare Function hidGetProductID Lib "mcHID.dll" Alias "GetProductID" (ByVal pHandle As Integer) As Integer
    Declare Function hidGetVersion Lib "mcHID.dll" Alias "GetVersion" (ByVal pHandle As Integer) As Integer
    Declare Function hidGetVendorName Lib "mcHID.dll" Alias "GetVendorName" (ByVal pHandle As Integer, ByVal pText As String, ByVal pLen As Integer) As Integer
    Declare Function hidGetProductName Lib "mcHID.dll" Alias "GetProductName" (ByVal pHandle As Integer, ByVal pText As String, ByVal pLen As Integer) As Integer
    Declare Function hidGetSerialNumber Lib "mcHID.dll" Alias "GetSerialNumber" (ByVal pHandle As Integer, ByVal pText As String, ByVal pLen As Integer) As Integer
    Declare Function hidGetInputReportLength Lib "mcHID.dll" Alias "GetInputReportLength" (ByVal pHandle As Integer) As Integer
    Declare Function hidGetOutputReportLength Lib "mcHID.dll" Alias "GetOutputReportLength" (ByVal pHandle As Integer) As Integer
    Declare Sub hidSetReadNotify Lib "mcHID.dll" Alias "SetReadNotify" (ByVal pHandle As Integer, ByVal pValue As Boolean)
    Declare Function hidIsReadNotifyEnabled Lib "mcHID.dll" Alias "IsReadNotifyEnabled" (ByVal pHandle As Integer) As Boolean
    Declare Function hidIsAvailable Lib "mcHID.dll" Alias "IsAvailable" (ByVal pVendorID As Integer, ByVal pProductID As Integer) As Boolean

    ' windows API declarations - used to set up messaging...

    Public Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Integer, ByVal hwnd As Integer, ByVal Msg As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
    Public Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" _
                                          (ByVal hwnd As Integer, ByVal nIndex As Integer, ByVal dwNewLong As Integer) As Integer

    Delegate Function SubClassProcDelegate(ByVal hwnd As Integer, ByVal msg As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
    Public Declare Function DelegateSetWindowLong Lib "USER32.DLL" Alias "SetWindowLongA" _
                                           (ByVal hwnd As Integer, ByVal attr As Integer, ByVal lval As SubClassProcDelegate) As Integer


    ' windows API Constants
    Public Const WM_APP As Integer = 32768
    Public Const GWL_WNDPROC As Short = -4

    ' HID message constants
    Private Const WM_HID_EVENT As Decimal = WM_APP + 200
    Private Const NOTIFY_PLUGGED As Short = 1
    Private Const NOTIFY_UNPLUGGED As Short = 2
    Private Const NOTIFY_CHANGED As Short = 3
    Private Const NOTIFY_READ As Short = 4

    ' local variables
    Private FPrevWinProc As Integer ' Handle to previous window procedure
    Private FWinHandle As Integer ' Handle to message window
    Private Ref_WinProc As New SubClassProcDelegate(AddressOf WinProc)
    Private HostForm As Object

    ' Set up a windows hook to receive notification
    ' messages from the HID controller DLL - then connect
    ' to the controller
    Public Function ConnectToHID(ByRef targetForm As Form) As Boolean
        Dim pHostWin As Integer = targetForm.Handle.ToInt32
        FWinHandle = pHostWin
        pHostWin = hidConnect(FWinHandle)
        FPrevWinProc = DelegateSetWindowLong(FWinHandle, GWL_WNDPROC, Ref_WinProc)
        HostForm = targetForm
    End Function

    ' Unhook from the HID controller and disconnect...
    Public Function DisconnectFromHID() As Boolean
        DisconnectFromHID = hidDisconnect
        SetWindowLong(FWinHandle, GWL_WNDPROC, FPrevWinProc)
    End Function


    ' This is the procedure that intercepts the HID controller messages...

    Private Function WinProc(ByVal pHWnd As Integer, ByVal pMsg As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
        If pMsg = WM_HID_EVENT Then
            Select Case wParam

                ' HID device has been plugged message...
                Case Is = NOTIFY_PLUGGED
                    HostForm.OnPlugged(lParam)

                    ' HID device has been unplugged
                Case Is = NOTIFY_UNPLUGGED
                    HostForm.OnUnplugged(lParam)

                    ' controller has changed...
                Case Is = NOTIFY_CHANGED
                    HostForm.OnChanged()

                    ' read event...
                Case Is = NOTIFY_READ
                    HostForm.OnRead(lParam)
            End Select

        End If

        ' next...
        WinProc = CallWindowProc(FPrevWinProc, pHWnd, pMsg, wParam, lParam)

    End Function
End Module