VERSION 5.00
Begin VB.Form one 
   Caption         =   "setup wizard "
   ClientHeight    =   4200
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5115
   Icon            =   "one.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4200
   ScaleWidth      =   5115
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "next"
      Height          =   375
      Left            =   1680
      TabIndex        =   5
      Top             =   3720
      Width           =   1575
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Text            =   "Default install to path"
      Top             =   3000
      Width           =   4695
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Text            =   "Company"
      Top             =   2040
      Width           =   4695
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Text            =   "Creator"
      Top             =   1440
      Width           =   4695
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Text            =   "Version"
      Top             =   600
      Width           =   4695
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Text            =   "program name"
      Top             =   120
      Width           =   4695
   End
   Begin VB.Line Line3 
      X1              =   0
      X2              =   6000
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   6000
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   6000
      Y1              =   1200
      Y2              =   1200
   End
End
Attribute VB_Name = "one"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public a, b, c, d, e As String
Private Sub Command1_Click()
On Error Resume Next
a = Text1.Text
b = Text2.Text
c = Text3.Text
d = Text4.Text
e = Text5.Text
Me.Hide
Load two
two.Show
MkDir ("C:\output\")
MkDir ("C:\output\files\")
MsgBox "setup will be located in C:\output , now generatiing script file so far...."
Open "C:\output\files\setuplix.lix.txt" For Output As #1
Print #1, a
Print #1, b
Print #1, c
Print #1, d
Print #1, e
Close #1
MsgBox " Done , going to step 2 "

End Sub

