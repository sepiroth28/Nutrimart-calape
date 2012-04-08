VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmPaymentReceivedDetails 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Payment Received Details"
   ClientHeight    =   8985
   ClientLeft      =   45
   ClientTop       =   675
   ClientWidth     =   15015
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8985
   ScaleWidth      =   15015
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      FillColor       =   &H8000000A&
      ForeColor       =   &H000000C0&
      Height          =   8835
      Left            =   60
      ScaleHeight     =   8805
      ScaleWidth      =   14865
      TabIndex        =   0
      Top             =   60
      Width           =   14895
      Begin VB.CommandButton cmdDoneRemit 
         Caption         =   "MARK AS REMITTED"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   6300
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   7980
         Width           =   2355
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H80000018&
         Caption         =   "Totals Received info"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1875
         Left            =   120
         TabIndex        =   4
         Top             =   6780
         Width           =   6075
         Begin MSComctlLib.ListView lsvTotalsInfo 
            Height          =   1335
            Left            =   180
            TabIndex        =   5
            Top             =   360
            Width           =   5715
            _ExtentX        =   10081
            _ExtentY        =   2355
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            HideColumnHeaders=   -1  'True
            FullRowSelect   =   -1  'True
            GridLines       =   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483643
            BorderStyle     =   1
            Appearance      =   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   2
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Received By:"
               Object.Width           =   5292
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   1
               SubItemIndex    =   1
               Text            =   "Totals"
               Object.Width           =   4410
            EndProperty
         End
      End
      Begin VB.CommandButton Command1 
         Caption         =   "CLOSE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   12480
         TabIndex        =   2
         Top             =   7980
         Width           =   2235
      End
      Begin MSComctlLib.ListView lsvPaymentReceived 
         Height          =   6015
         Left            =   60
         TabIndex        =   1
         Top             =   600
         Width           =   14655
         _ExtentX        =   25850
         _ExtentY        =   10610
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   0
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Payment Received Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   3
         Top             =   180
         Width           =   2955
      End
   End
   Begin VB.Menu mnu_Payment_details_file 
      Caption         =   "File"
      Begin VB.Menu mnu_payment_details_view_so_details 
         Caption         =   "View SO Details"
      End
      Begin VB.Menu mnu_payment_details_view_payment_hostory 
         Caption         =   "View Payment History"
      End
   End
End
Attribute VB_Name = "frmPaymentReceivedDetails"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDoneRemit_Click()
Dim insert As String

On Error Resume Next
'id, accepted_by, date_remit
insert = "INSERT INTO remitted VALUES(null,'" & activeUser.username & "',CURDATE());"
db.execute insert
MsgBox "All Payments Recieved has successfully remitted...", vbInformation, "Remitted"

End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Call setPaymentReceivedListview(lsvPaymentReceived)
lsvPaymentReceived.ColumnHeaders(1).width = 0
lsvPaymentReceived.ColumnHeaders(2).width = 2500
Call loadPaymentDetailsOnListView(lsvPaymentReceived, activeDate)
Call loadPaymentTotalsInfoReceivedBy(lsvTotalsInfo, activeDate)
lsvPaymentReceived.ColumnHeaders(3).width = 3000


End Sub

Private Sub lsvPaymentReceived_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 2 Then
    PopupMenu mnu_Payment_details_file
End If
End Sub

Private Sub mnu_payment_details_view_payment_hostory_Click()
    activeSalesOrderForPaymentHistory = lsvPaymentReceived.SelectedItem.SubItems(1)
    frmPaymentHistoryDetails.Show 1
End Sub

Private Sub mnu_payment_details_view_so_details_Click()
On Error Resume Next
    activeSalesOrderForViewSalesDetails = lsvPaymentReceived.SelectedItem.SubItems(1)
    frmViewSalesInDetails.Show 1
End Sub
