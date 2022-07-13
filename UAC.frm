VERSION 5.00
Begin VB.Form UAC 
   Caption         =   "UAC"
   ClientHeight    =   1890
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   1935
   Icon            =   "UAC.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1890
   ScaleWidth      =   1935
   StartUpPosition =   3  '窗口缺省
   Begin VB.Label Label3 
      Caption         =   "ADMIN MODE"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H0000FF00&
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   240
      Shape           =   3  'Circle
      Top             =   1450
      Width           =   135
   End
   Begin VB.Label Label2 
      Caption         =   "UAC [file]"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   840
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Command:"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "UAC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Dim strcmd As String
strcmd = Command()
If strcmd <> "" Then
If strcmd = "firstrun" Then
RUN.Show
Unload Me
Else
CreateObject("Shell.application").shellexecute "cmd.exe", " /c " + strcmd, "", "runas", 1
End
End If
End If
End Sub
