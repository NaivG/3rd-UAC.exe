VERSION 5.00
Begin VB.Form RUN 
   Caption         =   "UAC"
   ClientHeight    =   2910
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   3000
   Icon            =   "RUN.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2910
   ScaleWidth      =   3000
   Begin VB.CommandButton Command1 
      Caption         =   "GOT IT"
      Height          =   615
      Left            =   600
      TabIndex        =   1
      Top             =   1920
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Congraduations!   Your computer   support UAC.exe!"
      BeginProperty Font 
         Name            =   "ËÎÌו"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   2055
   End
End
Attribute VB_Name = "RUN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
End
End Sub

Private Sub Form_Load()
Open "success.tmp" For Output As #1
Print #1, "1"
Close #1
End Sub
