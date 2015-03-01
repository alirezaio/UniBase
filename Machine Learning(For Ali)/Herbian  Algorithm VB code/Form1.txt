VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2910
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9270
   LinkTopic       =   "Form1"
   ScaleHeight     =   2910
   ScaleWidth      =   9270
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.CommandButton debug 
      Caption         =   "&Debug"
      Height          =   615
      Left            =   8160
      TabIndex        =   58
      Top             =   1800
      Width           =   975
   End
   Begin VB.CommandButton reset 
      Caption         =   "R&eset"
      Height          =   615
      Left            =   8160
      TabIndex        =   57
      Top             =   1080
      Width           =   975
   End
   Begin VB.CommandButton run 
      Caption         =   "&Run"
      Default         =   -1  'True
      Height          =   615
      Left            =   8160
      TabIndex        =   56
      Top             =   360
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox b1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   4
      Left            =   7080
      TabIndex        =   52
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox b1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   3
      Left            =   7080
      TabIndex        =   51
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox b1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   2
      Left            =   7080
      TabIndex        =   50
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox b1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   1
      Left            =   7080
      TabIndex        =   49
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox b1 
      BackColor       =   &H80000004&
      Height          =   285
      Index           =   0
      Left            =   7080
      TabIndex        =   48
      Text            =   "0"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox w2 
      BackColor       =   &H80000004&
      Height          =   285
      Index           =   0
      Left            =   6480
      TabIndex        =   43
      Text            =   "0"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox w1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   4
      Left            =   5880
      TabIndex        =   42
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox w1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   3
      Left            =   5880
      TabIndex        =   41
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox w1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   2
      Left            =   5880
      TabIndex        =   40
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox w1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   1
      Left            =   5880
      TabIndex        =   39
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox w1 
      BackColor       =   &H80000004&
      Height          =   285
      Index           =   0
      Left            =   5880
      TabIndex        =   38
      Text            =   "0"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox db 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   3
      Left            =   4800
      TabIndex        =   34
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox db 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   2
      Left            =   4800
      TabIndex        =   33
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox db 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   1
      Left            =   4800
      TabIndex        =   32
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox db 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   0
      Left            =   4800
      TabIndex        =   31
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox dw2 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   3
      Left            =   4200
      TabIndex        =   30
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox dw2 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   2
      Left            =   4200
      TabIndex        =   29
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox dw2 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   1
      Left            =   4200
      TabIndex        =   28
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox dw2 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   0
      Left            =   4200
      TabIndex        =   27
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox dw1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   3
      Left            =   3600
      TabIndex        =   26
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox dw1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   2
      Left            =   3600
      TabIndex        =   25
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox dw1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   1
      Left            =   3600
      TabIndex        =   24
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox dw1 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   0
      Left            =   3600
      TabIndex        =   23
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox tgt 
      Height          =   285
      Index           =   3
      Left            =   2520
      TabIndex        =   22
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox tgt 
      Height          =   285
      Index           =   2
      Left            =   2520
      TabIndex        =   21
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox tgt 
      Height          =   285
      Index           =   1
      Left            =   2520
      TabIndex        =   20
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox tgt 
      Height          =   285
      Index           =   0
      Left            =   2520
      TabIndex        =   19
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox t3 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   3
      Left            =   1440
      TabIndex        =   17
      Text            =   "1"
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox t3 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   2
      Left            =   1440
      TabIndex        =   16
      Text            =   "1"
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox t3 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   1
      Left            =   1440
      TabIndex        =   15
      Text            =   "1"
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox t3 
      BackColor       =   &H80000000&
      Height          =   285
      Index           =   0
      Left            =   1440
      TabIndex        =   14
      Text            =   "1"
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox t2 
      Height          =   285
      Index           =   3
      Left            =   840
      TabIndex        =   12
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox t2 
      Height          =   285
      Index           =   2
      Left            =   840
      TabIndex        =   11
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox t2 
      Height          =   285
      Index           =   1
      Left            =   840
      TabIndex        =   10
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox t2 
      Height          =   285
      Index           =   0
      Left            =   840
      TabIndex        =   9
      Top             =   1200
      Width           =   495
   End
   Begin VB.TextBox t1 
      Height          =   285
      Index           =   3
      Left            =   240
      TabIndex        =   7
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox t1 
      Height          =   285
      Index           =   2
      Left            =   240
      TabIndex        =   6
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox t1 
      Height          =   285
      Index           =   1
      Left            =   240
      TabIndex        =   5
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox t1 
      Height          =   285
      Index           =   0
      Left            =   240
      TabIndex        =   4
      Top             =   1200
      Width           =   495
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H80000004&
      Caption         =   "WEIGHT"
      Height          =   2535
      Left            =   5640
      TabIndex        =   3
      Top             =   240
      Width           =   2415
      Begin VB.TextBox w2 
         BackColor       =   &H80000000&
         Height          =   285
         Index           =   4
         Left            =   840
         TabIndex        =   47
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox w2 
         BackColor       =   &H80000000&
         Height          =   285
         Index           =   3
         Left            =   840
         TabIndex        =   46
         Top             =   1680
         Width           =   495
      End
      Begin VB.TextBox w2 
         BackColor       =   &H80000000&
         Height          =   285
         Index           =   2
         Left            =   840
         TabIndex        =   45
         Top             =   1320
         Width           =   495
      End
      Begin VB.TextBox w2 
         BackColor       =   &H80000000&
         Height          =   285
         Index           =   1
         Left            =   840
         TabIndex        =   44
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label9 
         Caption         =   "b"
         Height          =   255
         Left            =   1560
         TabIndex        =   55
         Top             =   240
         Width           =   135
      End
      Begin VB.Label Label8 
         Caption         =   "w2"
         Height          =   255
         Left            =   960
         TabIndex        =   54
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label7 
         Caption         =   "w1"
         Height          =   255
         Left            =   360
         TabIndex        =   53
         Top             =   240
         Width           =   255
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "¦¤WEIGHT"
      Height          =   2535
      Left            =   3480
      TabIndex        =   2
      Top             =   240
      Width           =   1935
      Begin VB.Label Label6 
         Caption         =   "¦¤b"
         Height          =   255
         Left            =   1320
         TabIndex        =   37
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label5 
         Caption         =   "¦¤w2"
         Height          =   255
         Left            =   720
         TabIndex        =   36
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label4 
         Caption         =   "¦¤w1"
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "TARGET"
      Height          =   2535
      Left            =   2280
      TabIndex        =   1
      Top             =   240
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Caption         =   "INPUT"
      Height          =   2535
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1935
      Begin VB.Label Label3 
         Caption         =   "1"
         Height          =   255
         Left            =   1440
         TabIndex        =   18
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label2 
         Caption         =   "x2"
         Height          =   255
         Left            =   840
         TabIndex        =   13
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label1 
         Caption         =   "x1"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   240
         Width           =   135
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub debug_Click()
    For i = 0 To 3
        t1(i).Text = i
        t2(i).Text = i
        tgt(i).Text = i
    Next
End Sub

Private Sub reset_Click()

    For i = 0 To 3
        t1(i).Text = ""
        t2(i).Text = ""
        tgt(i).Text = ""
        dw1(i).Text = ""
        dw2(i).Text = ""
        db(i).Text = ""
    Next
    
    For i = 1 To 4
        w1(i).Text = ""
        w2(i).Text = ""
        b1(i).Text = ""
    Next

End Sub

Private Sub run_Click()
    
    Dim got_value As Boolean
    got_value = True
    For i = 0 To 3
        If t1(i).Text = "" Or t2(i).Text = "" Or tgt(i).Text = "" Then
            got_value = False
        End If
    Next
    If got_value = True Then
        For i = 0 To 3
            dw1(i).Text = t1(i).Text * tgt(i).Text
            dw2(i).Text = t2(i).Text * tgt(i).Text
            db(i).Text = tgt(i).Text
        Next i
        
        For i = 1 To 4
            w1(i).Text = Val(dw1(i - 1).Text) + Val(w1(i - 1).Text)
            w2(i).Text = Val(dw2(i - 1).Text) + Val(w2(i - 1).Text)
            b1(i).Text = Val(db(i - 1).Text) + Val(b1(i - 1).Text)
        Next
    Else
        MsgBox "Please insert the value for all x1,x2 and target."
    End If
    
End Sub

