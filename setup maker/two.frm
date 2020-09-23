VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form two 
   Caption         =   "step two"
   ClientHeight    =   2115
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   Icon            =   "two.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2115
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog cd 
      Left            =   4440
      Top             =   1440
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   480
      TabIndex        =   4
      Text            =   "File Name AND Extension"
      Top             =   840
      Width           =   2775
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Browse"
      Height          =   375
      Left            =   3240
      TabIndex        =   3
      Top             =   360
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Text            =   "File Path To Add To Setup"
      Top             =   360
      Width           =   2775
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Finish"
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add To Setup"
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   1560
      Width           =   1335
   End
End
Attribute VB_Name = "two"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

MsgBox " Adding.... "
Open "C:\output\files\setuplix.lix.txt" For Append As #1
Print #1, Text2.Text
Close #1
FileCopy (Text1.Text), ("C:\output\files\" & Text2.Text & "")
MsgBox " added.. "

End Sub

Private Sub Command2_Click()
MsgBox "Finishing up , and cleaning up...."

b = ""
c = ""
d = ""
e = ""
FileCopy (App.Path & "\setup_.ubp"), ("C:\output\setup_" & a & ".exe")
FileCopy (App.Path & "\inst.bmp"), ("C:\output\inst.bmp")
FileCopy (App.Path & "\read.bmp"), ("C:\output\read.bmp")
FileCopy (App.Path & "\exit.bmp"), ("C:\output\exit.bmp")
a = ""
MsgBox " Finished   setup is located in C:\output\ , everything in the folder output is needed to the setup.and donot change ANYTHINGS names "
MsgBox " This Program Is So Simple It Isnt Even Funny! "
End
End Sub

Private Sub Command3_Click()
On Error Resume Next
cd.ShowOpen
Text1.Text = cd.FileName

End Sub

