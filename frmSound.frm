VERSION 5.00
Begin VB.Form frmSound 
   Appearance      =   0  'Flat
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   "Text Display"
   ClientHeight    =   9975
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12975
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9975
   ScaleWidth      =   12975
   ShowInTaskbar   =   0   'False
   Begin VB.Frame fraMain 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   9735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   12735
      Begin VB.Frame fraTitle 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1300
         Left            =   0
         TabIndex        =   10
         Top             =   0
         Width           =   12735
         Begin VB.Label lblTitle 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "Sound effects"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   24
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   705
            Left            =   0
            TabIndex        =   11
            Top             =   600
            Width           =   12735
         End
      End
      Begin VB.Frame frascrMain 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   6500
         Left            =   12360
         TabIndex        =   9
         Top             =   1320
         Visible         =   0   'False
         Width           =   240
      End
      Begin VB.Frame fracmdClose 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   10200
         TabIndex        =   1
         Top             =   8400
         Width           =   1695
         Begin VB.Label lblClose 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Close"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   315
            Left            =   480
            TabIndex        =   2
            Top             =   135
            Width           =   570
         End
      End
      Begin VB.Frame fracmdBack 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   840
         TabIndex        =   3
         Top             =   8400
         Width           =   1695
         Begin VB.Label lblBack 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Back"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   315
            Left            =   600
            TabIndex        =   4
            Top             =   135
            Width           =   480
         End
      End
      Begin VB.Frame fracmdApply 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   8280
         TabIndex        =   5
         Top             =   8400
         Width           =   1695
         Begin VB.Label lblApply 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Apply"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   315
            Left            =   480
            TabIndex        =   6
            Top             =   135
            Width           =   600
         End
      End
      Begin VB.Frame fraMainScroll 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   6500
         Left            =   840
         TabIndex        =   7
         Top             =   1320
         Width           =   11055
         Begin VB.Frame Frame5 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   975
            Left            =   6000
            TabIndex        =   31
            Tag             =   "1,255"
            Top             =   1680
            Width           =   5000
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Failure mode"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   33
               Top             =   0
               Width           =   1365
            End
            Begin VB.Label Label10 
               BackColor       =   &H00808080&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00808080&
               Height          =   315
               Left            =   15
               TabIndex        =   32
               Top             =   480
               Width           =   15
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               BackColor       =   &H00404040&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   34
               Top             =   480
               Width           =   5000
            End
         End
         Begin VB.Frame Frame4 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   975
            Left            =   120
            TabIndex        =   27
            Tag             =   "1,255"
            Top             =   5400
            Width           =   5000
            Begin VB.Label Label8 
               BackColor       =   &H00808080&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00808080&
               Height          =   315
               Left            =   15
               TabIndex        =   29
               Top             =   480
               Width           =   15
            End
            Begin VB.Label Label7 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Switch to Pointer mode"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   28
               Top             =   0
               Width           =   2430
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               BackColor       =   &H00404040&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   30
               Top             =   480
               Width           =   5000
            End
         End
         Begin VB.Frame Frame3 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   975
            Left            =   120
            TabIndex        =   23
            Tag             =   "1,255"
            Top             =   4200
            Width           =   5000
            Begin VB.Label Label6 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Switch to POV mode"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   26
               Top             =   0
               Width           =   2145
            End
            Begin VB.Label Label5 
               BackColor       =   &H00808080&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00808080&
               Height          =   315
               Left            =   15
               TabIndex        =   25
               Top             =   480
               Width           =   15
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               BackColor       =   &H00404040&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   24
               Top             =   480
               Width           =   5000
            End
         End
         Begin VB.Frame Frame2 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   975
            Left            =   120
            TabIndex        =   19
            Tag             =   "1,255"
            Top             =   2880
            Width           =   5000
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Footsteps"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   22
               Top             =   0
               Width           =   1005
            End
            Begin VB.Label Label2 
               BackColor       =   &H00808080&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00808080&
               Height          =   315
               Left            =   15
               TabIndex        =   21
               Top             =   480
               Width           =   15
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               BackColor       =   &H00404040&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   20
               Top             =   480
               Width           =   5000
            End
         End
         Begin VB.Frame fratra1 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   975
            Left            =   120
            TabIndex        =   12
            Tag             =   "1,255"
            Top             =   1680
            Width           =   5000
            Begin VB.Label lblValueSlider5 
               BackColor       =   &H00808080&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00808080&
               Height          =   315
               Left            =   15
               TabIndex        =   14
               Top             =   480
               Width           =   15
            End
            Begin VB.Label lblTitleSlider5 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Select 3D icon"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   13
               Top             =   0
               Width           =   1470
            End
            Begin VB.Label lblSlider5 
               AutoSize        =   -1  'True
               BackColor       =   &H00404040&
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   0
               TabIndex        =   15
               Top             =   480
               Width           =   5000
            End
         End
         Begin VB.Frame Frame1 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   1215
            Left            =   240
            TabIndex        =   8
            Top             =   120
            Width           =   5000
            Begin VB.Frame frachkMuteSounds 
               Appearance      =   0  'Flat
               BackColor       =   &H00000000&
               BorderStyle     =   0  'None
               ForeColor       =   &H80000008&
               Height          =   975
               Left            =   0
               TabIndex        =   16
               Tag             =   "1,20"
               Top             =   240
               Width           =   5000
               Begin VB.CheckBox chkMuteSounds 
                  Appearance      =   0  'Flat
                  BackColor       =   &H00000000&
                  BeginProperty Font 
                     Name            =   "Segoe UI"
                     Size            =   12
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H00FFFFFF&
                  Height          =   315
                  Left            =   0
                  TabIndex        =   17
                  TabStop         =   0   'False
                  Top             =   360
                  Width           =   200
               End
               Begin VB.Label lblMuteSounds 
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Transparent
                  Caption         =   "Mute all sounds"
                  BeginProperty Font 
                     Name            =   "Segoe UI"
                     Size            =   12
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H00FFFFFF&
                  Height          =   315
                  Left            =   480
                  TabIndex        =   18
                  Top             =   360
                  Width           =   1650
               End
            End
         End
      End
   End
End
Attribute VB_Name = "frmSound"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private isloaded  As Boolean
Private dragx As Long
Private dragy As Long
Private dragscr As Boolean
'Private Declare Function apiBringWindowToTop Lib "user32" Alias "BringWindowToTop" (ByVal hWnd As Long) As Long
Private Sub Form_Load()
    On Error Resume Next
    CreateRoundRectFromWindow Me
    CreateRoundRectFromWindow fraMain
    chkMuteSounds.Value = soundxMute
    dragx = -1
    dragy = -1
    isloaded = True
End Sub
Private Sub Form_Activate()
    WindowTransparency Me.hWnd, displayTransSettings, vbBlack
End Sub
Private Sub fraMain_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    dragx = x
    dragy = y
End Sub
Private Sub fraMain_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    dragx = -1
    dragy = -1
End Sub
Private Sub fraTitle_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    fraMain_MouseDown Button, Shift, x, y
End Sub
Private Sub fraTitle_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    fraMain_MouseMove Button, Shift, x, y
End Sub
Private Sub fraTitle_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    fraMain_MouseUp Button, Shift, x, y
End Sub
Private Sub chkMuteSounds_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
   CheckBoxSetting
End Sub
Private Sub lblMuteSounds_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If chkMuteSounds.Value = vbUnchecked Then
        chkMuteSounds.Value = vbChecked
    Else
        chkMuteSounds.Value = vbUnchecked
    End If
    CheckBoxSetting
End Sub
Private Sub CheckBoxSetting()
soundxMute = chkMuteSounds.Value
End Sub

Private Sub lblTitle_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    fraMain_MouseDown Button, Shift, x, y
End Sub
Private Sub lblTitle_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    fraMain_MouseMove Button, Shift, x, y
End Sub
Private Sub lblTitle_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    fraMain_MouseUp Button, Shift, x, y
End Sub
Private Sub fraMain_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error Resume Next
    If fracmdBack.BackColor <> &H404040 Then fracmdBack.BackColor = &H404040
    If fracmdApply.BackColor <> &H404040 Then fracmdApply.BackColor = &H404040
    If fracmdClose.BackColor <> &H404040 Then fracmdClose.BackColor = &H404040
    If dragx > -1 Then
        If x > dragx Then
            Me.left = Me.left + (x - dragx)
        ElseIf x < dragx Then
            Me.left = Me.left - (dragx - x)
        End If
    End If
    If dragy > -1 Then
        If y > dragy Then
            Me.top = Me.top + (y - dragy)
        ElseIf y < dragy Then
            Me.top = Me.top - (dragy - y)
        End If
    End If
End Sub
Private Sub fracmdBack_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    fracmdBack.BackColor = &H808080
End Sub
Private Sub fracmdApply_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    fracmdApply.BackColor = &H808080
End Sub
Private Sub fracmdClose_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    fracmdClose.BackColor = &H808080
End Sub
Private Sub vscrChange(ByVal x As Single, ByVal y As Single)
    Dim he As Long
    Dim ra As Double
    Dim tp As Long
    he = frascrMain.Height - 135
    ra = (y - 135) / he
    tp = 1000 - (ra * (fraMainScroll.Height - 4000))
    If Abs(tp) > (fraMainScroll.Height - 4000) Then
        tp = -(Abs(tp) - (fraMainScroll.Height - 4000))
        Exit Sub
    End If
    fraMainScroll.top = tp
End Sub
Private Sub frascrMain_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    dragscr = True
    If y < 135 Then Exit Sub
    If y > frascrMain.Height Then Exit Sub
    vscrChange x, y
End Sub
Private Sub frascrMain_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If dragscr = False Then Exit Sub
    If y < 135 Then Exit Sub
    If y > frascrMain.Height Then Exit Sub
    vscrChange x, y
End Sub
Private Sub frascrMain_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    dragscr = False
End Sub
Private Sub fracmdBack_Click()
    frmSettings.show
    frmSettings.top = Me.top
    frmSettings.left = Me.left
    frmMain.SetWindowPos frmSettings.hWnd, -1, 0, 0, 0, 0, False, False
    Unload Me
End Sub
Private Sub lblBack_Click()
    fracmdBack_Click
End Sub

Private Sub fracmdApply_Click()
    '    pointerTextSize = traTextSize.Value
    '    pointerTextPosition = traTextPosition.Value
    '    pointerTextSpeed = traTextSpeed.Value
    '    pointerTextFade = traTextFade.Value
    soundxMute = chkMuteSounds.Value
       SaveSetting "Window3D", "Soundeffects", "Mute", CStr(soundxMute)
    '    SaveSetting "Window3D", "ButtonMap", "TextPosition", CStr(pointerTextPosition)
    '    SaveSetting "Window3D", "ButtonMap", "TextSpeed", CStr(pointerTextSpeed)
    '    SaveSetting "Window3D", "ButtonMap", "TextFade", CStr(pointerTextFade)
    Beep
End Sub
Private Sub lblApply_Click()
    fracmdApply_Click
End Sub
Private Sub fracmdClose_Click()
    Unload Me
End Sub
Private Sub lblClose_Click()
    fracmdClose_Click
End Sub
