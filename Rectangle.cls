VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Rectangle"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Attribute VB_Ext_KEY = "Member0" ,"Size"
Option Explicit
Private Type RECT
    left            As Long
    top             As Long
    right           As Long
    bottom          As Long
End Type
Private Declare Function apiCopyRect Lib "user32" Alias "CopyRect" (ByRef lpDestRect As RECT, ByRef lpSourceRect As RECT) As Long
Private Declare Function apiEqualRect Lib "user32" Alias "EqualRect" (ByRef lpRect1 As RECT, ByRef lpRect2 As RECT) As Long
Private Declare Function apiGetClientRect Lib "user32" Alias "GetClientRect" (ByVal hWnd As Long, ByRef lpRect As RECT) As Long
Private Declare Function apiGetWindowRect Lib "user32" Alias "GetWindowRect" (ByVal hWnd As Long, ByRef lpRect As RECT) As Long
Private Declare Function apiInflateRect Lib "user32" Alias "InflateRect" (ByRef lpRect As RECT, ByVal x As Long, ByVal y As Long) As Long
Private Declare Function apiIntersectRect Lib "user32" Alias "IntersectRect" (ByRef lpDestRect As RECT, ByRef lpSrc1Rect As RECT, ByRef lpSrc2Rect As RECT) As Long
Private Declare Function apiIsRectEmpty Lib "user32" Alias "IsRectEmpty" (ByRef lpRect As RECT) As Long
Private Declare Function apiOffsetRect Lib "user32" Alias "OffsetRect" (ByRef lpRect As RECT, ByVal x As Long, ByVal y As Long) As Long
Private Declare Function apiPtInRect Lib "user32" Alias "PtInRect" (ByRef lpRect As RECT, ByVal x As Long, ByVal y As Long) As Long
Private Declare Function apiSetRect Lib "user32" Alias "SetRect" (ByRef lpRect As RECT, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Declare Function apiSetRectEmpty Lib "user32" Alias "SetRectEmpty" (ByRef lpRect As RECT) As Long
Private Declare Function apiSubtractRect Lib "user32" Alias "SubtractRect" (ByRef lprcDst As RECT, ByRef lprcSrc1 As RECT, ByRef lprcSrc2 As RECT) As Long
Private Declare Function apiUnionRect Lib "user32" Alias "UnionRect" (ByRef lprcDst As RECT, ByRef lprcSrc1 As RECT, ByRef lprcSrc2 As RECT) As Long
Private mvarRectangle As New Rectangle
Private mvarLocation  As New Point
Private mvarSize      As New Size
Private mvarTop       As Long
Private mvarLeft      As Long
Private mvarBottom    As Long
Private mvarRight     As Long
Private mvarHeight    As Long
Private mvarWidth_    As Long
Private mvarX         As Long
Private mvarY         As Long
Public Property Let y(ByVal vData As Long)
    mvarY = vData
End Property
Public Property Get y() As Long
    y = mvarY
End Property
Public Property Let x(ByVal vData As Long)
    mvarX = vData
End Property
Public Property Get x() As Long
    x = mvarX
End Property
Public Property Let Width_(ByVal vData As Long)
    mvarWidth_ = vData
End Property
Public Property Get Width_() As Long
    Width_ = mvarWidth_
End Property
Public Property Let Height(ByVal vData As Long)
    mvarHeight = vData
End Property
Public Property Get Height() As Long
    Height = mvarHeight
End Property
Public Property Set Location(ByVal vData As Point)
    Set mvarLocation = vData
End Property
Public Property Get Location() As Point
    Set Location = mvarLocation
End Property
Public Property Set Size(ByVal vData As Size)
    Set mvarSize = vData
End Property
Public Property Get Size() As Size
    Set Size = mvarSize
End Property
Public Property Let top(ByVal vData As Long)
    mvarTop = vData
End Property
Public Property Get top() As Long
    top = mvarTop
End Property
Public Property Let left(ByVal vData As Long)
    mvarLeft = vData
End Property
Public Property Get left() As Long
    left = mvarLeft
End Property
Public Property Let bottom(ByVal vData As Long)
    mvarBottom = vData
End Property
Public Property Get bottom() As Long
    bottom = mvarBottom
End Property
Public Property Let right(ByVal vData As Long)
    mvarRight = vData
End Property
Public Property Get right() As Long
    right = mvarRight
End Property
Private Sub FromRectangle(ByRef rDestination As RECT, ByRef rSource As Rectangle)
    Call apiSetRect(rDestination, rSource.x, rSource.y, rSource.right, rSource.bottom)
End Sub
Friend Sub FromRECT(ByRef r1 As RECT, ByRef r2 As Rectangle)
    On Error Resume Next
    Call FromLTRB(r1.left, r1.top, r1.right, r1.bottom, r2)
    With r2
        .x = r1.left
        .y = r1.top
        .Width_ = (r1.right - r1.left)
        .Height = (r1.bottom - r1.top)
        .Location.x = r1.left
        .Location.y = r1.top
        .Size.Width_ = (r1.right - r1.left)
        .Size.Height_ = (r1.bottom - r1.top)
    End With
End Sub
Friend Sub FromLTRB(ByVal left As Long, ByVal top As Long, ByVal right As Long, ByVal bottom As Long, ByRef r2 As Rectangle)
    On Error Resume Next
    Dim r As New Rectangle
    With r
        .x = left
        .y = top
        .left = left
        .top = top
        .Location.x = left
        .Location.y = top
        .bottom = bottom
        .right = right
        .Width_ = (right - left)
        .Height = (bottom - top)
        .Size.Width_ = (right - left)
        .Size.Height_ = (bottom - top)
    End With
    Set r2 = r
End Sub
Friend Sub Copy(ByRef rDestination As Rectangle, ByRef rSource As Rectangle)
    On Error Resume Next
    Dim rctdest As RECT
    Dim rctsour As RECT
    Call FromRectangle(rctdest, rDestination)
    Call FromRectangle(rctsour, rSource)
    Call apiCopyRect(rctdest, rctsour)
    Call FromRECT(rctdest, rDestination)
End Sub
Friend Sub Offset(ByRef pt As Point, ByRef lpRect As Rectangle)
    On Error Resume Next
    Dim r As RECT
    Call FromRectangle(r, lpRect)
    Call apiOffsetRect(r, pt.x, pt.y)
    Call FromRECT(r, lpRect)
End Sub
Friend Sub EmptyRectangle(ByRef lpRect As Rectangle)
    On Error Resume Next
    Dim r   As New Rectangle
    Dim rct As RECT
    Call FromRectangle(rct, lpRect)
    Call apiSetRectEmpty(rct)
    Call FromRECT(rct, r)
    Set lpRect = r
End Sub
Friend Function PoinInRectangle(ByRef p As Point, ByRef r As Rectangle) As Boolean
    Dim r2 As RECT
    Call FromRectangle(r2, r)
    PoinInRectangle = CBool(apiPtInRect(r2, p.x, p.y))
End Function
Friend Sub Inflate(ByRef lpRect As Rectangle, ByVal x As Long, ByVal y As Long)
    On Error Resume Next
    Dim r   As New Rectangle
    Dim rct As RECT
    Call FromRectangle(rct, lpRect)
    Call apiInflateRect(rct, x, y)
    Call FromRECT(rct, r)
    Set lpRect = r
End Sub
Friend Sub Subtract(ByRef dest As Rectangle, ByRef Source As Rectangle, ByRef source2 As Rectangle)
    On Error Resume Next
    Dim r        As New Rectangle
    Dim rdest    As RECT
    Dim rsource1 As RECT
    Dim rsource2 As RECT
    Call FromRectangle(rdest, dest)
    Call FromRectangle(rsource1, Source)
    Call FromRectangle(rsource2, source2)
    Call apiSubtractRect(rdest, rsource1, rsource2)
    Call FromRECT(rdest, r)
    Set dest = r
End Sub
Friend Sub Union(ByRef dest As Rectangle, ByRef Source As Rectangle, ByRef source2 As Rectangle)
    On Error Resume Next
    Dim r        As New Rectangle
    Dim rdest    As RECT
    Dim rsource1 As RECT
    Dim rsource2 As RECT
    Call FromRectangle(rdest, dest)
    Call FromRectangle(rsource1, Source)
    Call FromRectangle(rsource2, source2)
    Call apiUnionRect(rdest, rsource1, rsource2)
    Call FromRECT(rdest, r)
    Set dest = r
End Sub
Friend Sub Intersect(ByRef dest As Rectangle, ByRef Source As Rectangle, ByRef source2 As Rectangle)
    On Error Resume Next
    Dim r        As New Rectangle
    Dim rdest    As RECT
    Dim rsource1 As RECT
    Dim rsource2 As RECT
    Call FromRectangle(rdest, dest)
    Call FromRectangle(rsource1, Source)
    Call FromRectangle(rsource2, source2)
    Call apiIntersectRect(rdest, rsource1, rsource2)
    Call FromRECT(rdest, r)
    Set dest = r
End Sub
Friend Function IntersectsWith(ByRef dest As Rectangle, ByRef Source As Rectangle, ByRef source2 As Rectangle) As Boolean
    On Error Resume Next
    Dim r        As New Rectangle
    Dim rdest    As RECT
    Dim rsource1 As RECT
    Dim rsource2 As RECT
    Call FromRectangle(rdest, dest)
    Call FromRectangle(rsource1, Source)
    Call FromRectangle(rsource2, source2)
    Call apiIntersectRect(rdest, rsource1, rsource2)
    Call FromRECT(rdest, r)
    IntersectsWith = Not IsEmpty(r)
End Function
Friend Function Equals(ByRef r1 As Rectangle, ByRef r2 As Rectangle) As Boolean
    On Error Resume Next
    Dim rect1 As RECT
    Dim rect2 As RECT
    Call apiSetRect(rect1, r1.x, r1.y, r1.right, r1.bottom)
    Call FromRectangle(rect1, r1)
    Call FromRectangle(rect2, r2)
    Equals = CBool(apiEqualRect(rect1, rect2))
End Function
Friend Function IsEmpty(ByRef lpRect As Rectangle) As Boolean
    On Error Resume Next
    Dim rct As RECT
    Call FromRectangle(rct, lpRect)
    IsEmpty = CBool(apiSetRectEmpty(rct))
End Function
