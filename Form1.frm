VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0FFC0&
   Caption         =   "Lampu Lalu Lintas"
   ClientHeight    =   7065
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   ScaleHeight     =   7065
   ScaleWidth      =   6150
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "START"
      Height          =   735
      Left            =   4200
      TabIndex        =   2
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "STOP"
      Height          =   735
      Left            =   4200
      TabIndex        =   1
      Top             =   4560
      Width           =   1215
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   840
      Top             =   4680
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   840
      Top             =   3120
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   840
      Top             =   1440
   End
   Begin VB.Shape Shape5 
      BackColor       =   &H00E0E0E0&
      BackStyle       =   1  'Opaque
      Height          =   1335
      Left            =   2520
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label waktu 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "BadaBoom BB"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   600
      Left            =   4560
      TabIndex        =   0
      Top             =   1200
      Width           =   285
   End
   Begin VB.Shape ijo 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      Height          =   1335
      Left            =   2040
      Shape           =   3  'Circle
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Shape oranye 
      BackColor       =   &H000080FF&
      BackStyle       =   1  'Opaque
      Height          =   1335
      Left            =   2040
      Shape           =   3  'Circle
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Shape merah 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   1335
      Left            =   2040
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H00E0E0E0&
      BackStyle       =   1  'Opaque
      Height          =   4935
      Left            =   1680
      Top             =   840
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
waktu.Caption = 0
waktu.ForeColor = vbBlack
merah.BackColor = &HE0E0E0
oranye.BackColor = &HE0E0E0
ijo.BackColor = &HE0E0E0
Timer1.Enabled = False
Timer2.Enabled = False
Timer3.Enabled = False
End Sub

Private Sub Command2_Click()
Timer1.Enabled = True
waktu.Caption = 10
waktu.ForeColor = vbRed
merah.BackColor = vbRed
End Sub

Private Sub Timer1_Timer()
waktu.Caption = waktu.Caption - 1
merah.BackColor = vbRed
oranye.BackColor = &HE0E0E0
ijo.BackColor = &HE0E0E0
If waktu.Caption = "0" Then
waktu.Caption = 3
waktu.ForeColor = vbYellow
merah.BackColor = &HE0E0E0
oranye.BackColor = vbYellow
ijo.BackColor = &HE0E0E0
Timer1.Enabled = False
Timer2.Enabled = True

End If
End Sub

Private Sub Timer2_Timer()
waktu.Caption = waktu.Caption - 1
If waktu.Caption = "0" Then
waktu.Caption = 15
waktu.ForeColor = vbGreen
merah.BackColor = &HE0E0E0
oranye.BackColor = &HE0E0E0
ijo.BackColor = vbGreen
Timer2.Enabled = False
Timer3.Enabled = True

End If
End Sub

Private Sub Timer3_Timer()
waktu.Caption = waktu.Caption - 1
If waktu.Caption = "0" Then
waktu.Caption = 10
waktu.ForeColor = vbRed
merah.BackColor = vbRed
oranye.BackColor = &HE0E0E0
ijo.BackColor = &HE0E0E0
Timer3.Enabled = False
Timer1.Enabled = True
End If
End Sub
