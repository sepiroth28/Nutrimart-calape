VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMenu 
   BorderStyle     =   0  'None
   ClientHeight    =   10515
   ClientLeft      =   405
   ClientTop       =   1395
   ClientWidth     =   16575
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   11.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   10515
   ScaleWidth      =   16575
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdCancelTransaction 
      BackColor       =   &H0000FF00&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1035
      Left            =   60
      Picture         =   "frmMenu.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   36
      Top             =   1260
      Width           =   2295
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   12240
      Top             =   1440
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   150
      ImageHeight     =   70
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   7
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMenu.frx":6626
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMenu.frx":CE57
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMenu.frx":14B89
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMenu.frx":1BB2D
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMenu.frx":227E9
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMenu.frx":28F11
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMenu.frx":2F502
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   1230
      Left            =   0
      TabIndex        =   35
      Top             =   0
      Width           =   16575
      _ExtentX        =   29236
      _ExtentY        =   2170
      ButtonWidth     =   4154
      ButtonHeight    =   2011
      Appearance      =   1
      ImageList       =   "ImageList1"
      DisabledImageList=   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   6
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "manage_item"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "manage_customer"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "manage_stockin"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "payment"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "inventory"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "view_records"
            ImageIndex      =   7
         EndProperty
      EndProperty
      BorderStyle     =   1
      Begin VB.CommandButton cmdViewSales 
         Height          =   1095
         Left            =   14160
         Picture         =   "frmMenu.frx":365DB
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   60
         Width           =   2415
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H80000008&
      Height          =   9855
      Left            =   0
      Picture         =   "frmMenu.frx":37E6D
      ScaleHeight     =   9825
      ScaleWidth      =   16545
      TabIndex        =   12
      Top             =   660
      Width           =   16575
      Begin VB.Timer Timer1 
         Interval        =   60000
         Left            =   180
         Top             =   6300
      End
      Begin VB.CommandButton cmdAddTracking 
         BackColor       =   &H0080FF80&
         Caption         =   "ADD TRUCKING PRICE"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   14040
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   1800
         Width           =   2232
      End
      Begin VB.CommandButton cmdAddDiscount 
         BackColor       =   &H00FF80FF&
         Caption         =   "ADD DISCOUNT"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   11820
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   1800
         Width           =   2172
      End
      Begin VB.CommandButton cmdNewAccountReceivable 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0FF&
         Caption         =   "NEW ACCOUNT RECEIVABLE TRANSACTION (F2)"
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1755
         Left            =   6240
         Style           =   1  'Graphical
         TabIndex        =   0
         Top             =   7440
         Width           =   5175
      End
      Begin VB.CheckBox chkWalkInCustomer 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Walk in Customer"
         ForeColor       =   &H80000008&
         Height          =   435
         Left            =   5340
         TabIndex        =   29
         Top             =   6900
         Width           =   2592
      End
      Begin VB.CommandButton cmdNewTransaction 
         Appearance      =   0  'Flat
         BackColor       =   &H000080FF&
         Caption         =   "NEW COD TRANSACTION (F3)"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1755
         Left            =   11520
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   7440
         Width           =   4815
      End
      Begin VB.PictureBox picSoldTo 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         ForeColor       =   &H80000008&
         Height          =   1755
         Left            =   5100
         ScaleHeight     =   1725
         ScaleWidth      =   5085
         TabIndex        =   23
         Top             =   7440
         Width           =   5115
         Begin VB.TextBox txtCustomers 
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   456
            Left            =   300
            TabIndex        =   25
            Top             =   420
            Width           =   3855
         End
         Begin VB.CommandButton cmdBrowseCustomer 
            Caption         =   "..."
            Height          =   432
            Left            =   4200
            TabIndex        =   24
            Top             =   420
            Width           =   492
         End
         Begin VB.Label lblDealerType 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   10.5
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   270
            Left            =   2100
            TabIndex        =   33
            Top             =   960
            Width           =   2670
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "CUSTOMER TYPE:"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   360
            TabIndex        =   32
            Top             =   960
            Width           =   1560
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "SOLD TO: "
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   216
            Left            =   1140
            TabIndex        =   28
            Top             =   120
            Width           =   912
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "AGENT:"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   360
            TabIndex        =   27
            Top             =   1320
            Width           =   675
         End
         Begin VB.Label lblAgent 
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   10.5
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   270
            Left            =   1140
            TabIndex        =   26
            Top             =   1260
            Width           =   2130
         End
      End
      Begin VB.PictureBox picPayment 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H80000008&
         Height          =   1755
         Left            =   10260
         ScaleHeight     =   1725
         ScaleWidth      =   3285
         TabIndex        =   20
         Top             =   7440
         Width           =   3315
         Begin VB.Label Label7 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "PAYMENT TYPE:"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   60
            TabIndex        =   22
            Top             =   60
            Width           =   3150
         End
         Begin VB.Label lblPaymentType 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "ACCOUNT RECEIVABLE"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   10.5
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   270
            Left            =   60
            TabIndex        =   21
            Top             =   720
            Width           =   3255
         End
      End
      Begin VB.CommandButton cmdProcess 
         Caption         =   "PROCESS"
         Height          =   1755
         Left            =   13620
         TabIndex        =   19
         Top             =   7440
         Width           =   2655
      End
      Begin VB.CommandButton cmdBrowseItem 
         Caption         =   "browse item"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   10.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   612
         Left            =   14400
         TabIndex        =   17
         Top             =   6000
         Width           =   1872
      End
      Begin VB.TextBox txtItemsList 
         Appearance      =   0  'Flat
         Height          =   612
         Left            =   6480
         TabIndex        =   15
         Top             =   6000
         Width           =   7872
      End
      Begin MSComctlLib.ListView lsvItemsInCart 
         Height          =   3555
         Left            =   5340
         TabIndex        =   14
         Top             =   2220
         Width           =   10935
         _ExtentX        =   19288
         _ExtentY        =   6271
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
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   7
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "#"
            Object.Width           =   1411
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Item Name"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Qty"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   3
            Text            =   "Unit Price"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   4
            Text            =   "Amount"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   5
            Text            =   "Discount"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   6
            Text            =   "Tracking price"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label lblChangePassword 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Change password"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   240
         Left            =   660
         MousePointer    =   99  'Custom
         TabIndex        =   39
         Top             =   8700
         Width           =   1425
      End
      Begin VB.Label lblTime 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   4560
         TabIndex        =   38
         Top             =   6900
         Width           =   60
      End
      Begin VB.Image imgLogout 
         Height          =   660
         Left            =   2220
         MousePointer    =   99  'Custom
         Picture         =   "frmMenu.frx":59F0D
         Top             =   8520
         Width           =   2250
      End
      Begin VB.Label lblUser 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label4"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1680
         TabIndex        =   37
         Top             =   7980
         Width           =   780
      End
      Begin VB.Label lblWalkInCustomer 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000080&
         Height          =   216
         Left            =   2940
         TabIndex        =   34
         Top             =   7080
         Width           =   48
      End
      Begin VB.Label lblDate 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label4"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   10.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   270
         Left            =   360
         TabIndex        =   18
         Top             =   6900
         Width           =   690
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "ITEMS"
         Height          =   270
         Left            =   5340
         TabIndex        =   16
         Top             =   6180
         Width           =   750
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00808080&
         X1              =   5340
         X2              =   16260
         Y1              =   1740
         Y2              =   1740
      End
      Begin VB.Label lblTotalAmount 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0.00"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   55.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   13860
         TabIndex        =   13
         Top             =   480
         Width           =   2475
      End
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   9135
      Left            =   14580
      TabIndex        =   2
      Top             =   10200
      Width           =   2775
      Begin VB.CommandButton cmdAgent 
         Appearance      =   0  'Flat
         Caption         =   "Manage &Agent"
         Height          =   615
         Left            =   240
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   1800
         Width           =   2295
      End
      Begin VB.CommandButton cmdClose 
         Appearance      =   0  'Flat
         Caption         =   "Close"
         Height          =   615
         Left            =   240
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   6120
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.CommandButton cmdStockout 
         Appearance      =   0  'Flat
         Caption         =   "Stock &Out"
         Height          =   615
         Left            =   240
         TabIndex        =   9
         TabStop         =   0   'False
         Top             =   5400
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.CommandButton cmdInventory 
         Appearance      =   0  'Flat
         Caption         =   "&Inventory"
         Height          =   615
         Left            =   240
         TabIndex        =   8
         TabStop         =   0   'False
         Top             =   4740
         Width           =   2295
      End
      Begin VB.CommandButton cmdPayment 
         Appearance      =   0  'Flat
         Caption         =   "&Payment"
         Height          =   615
         Left            =   240
         TabIndex        =   7
         TabStop         =   0   'False
         Top             =   3960
         Width           =   2295
      End
      Begin VB.CommandButton cmdView 
         Appearance      =   0  'Flat
         Caption         =   "&View"
         Height          =   615
         Left            =   240
         TabIndex        =   6
         TabStop         =   0   'False
         Top             =   3240
         Width           =   2295
      End
      Begin VB.CommandButton cmdStockIn 
         Appearance      =   0  'Flat
         Caption         =   "Stock &In"
         Height          =   615
         Left            =   240
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   2520
         Width           =   2295
      End
      Begin VB.CommandButton cmdCustomer 
         Appearance      =   0  'Flat
         Caption         =   "Manage &Customer"
         Height          =   615
         Left            =   240
         TabIndex        =   4
         TabStop         =   0   'False
         Top             =   1080
         Width           =   2295
      End
      Begin VB.CommandButton cmdManageItem 
         Appearance      =   0  'Flat
         Caption         =   "Manage &Item"
         Height          =   615
         Left            =   240
         TabIndex        =   3
         TabStop         =   0   'False
         Top             =   360
         Width           =   2295
      End
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkWalkInCustomer_Click()
If chkWalkInCustomer.Value Then
    activeSales.isSoldToWalkIn = True
    picSoldTo.Enabled = False
    txtCustomers.Text = ""
    Set activeSales.sold_to = New Customers
    
   With activeSales.sold_to
    .customers_name = InputBox("Pls input walk in customer name", "Name")
    .dealers_type = CONSUMER
    .customers_add = ""
    .customers_number = ""
   End With
    lblWalkInCustomer.Caption = activeSales.sold_to.customers_name
Else
    activeSales.isSoldToWalkIn = False
     Set activeSales.sold_to = New Customers
     lblWalkInCustomer.Caption = ""
    picSoldTo.Enabled = True
End If
'checkProcessButton
End Sub

Private Sub cmdAddDiscount_Click()
Dim discount_amount As Double
Dim item_in_cart As New cart_items
On Error Resume Next
discount_amount = InputBox("Please input discount amount", "discount")

    For Each item_in_cart In activeSales.items_sold
        If item_in_cart.Item.item_name = lsvItemsInCart.SelectedItem.SubItems(1) Then
            item_in_cart.discount = discount_amount
        End If
    Next
Call loadActiveCartItems(lsvItemsInCart)
Call updateTotalAmount
End Sub

Private Sub cmdAddTracking_Click()
Dim tracking_amount As Double
Dim item_in_cart As New cart_items
On Error Resume Next
tracking_amount = InputBox("Please input discount amount", "discount")

    For Each item_in_cart In activeSales.items_sold
        If item_in_cart.Item.item_name = lsvItemsInCart.SelectedItem.SubItems(1) Then
            item_in_cart.tracking_price = tracking_amount
        End If
    Next
Call loadActiveCartItems(lsvItemsInCart)
Call updateTotalAmount
End Sub

Private Sub cmdAgent_Click()
frmManageAgent.Show 1
    
End Sub

Private Sub cmdBrowseCustomer_Click()
If activeSales.sold_to.customers_name = "" Then
    frmCustomersList.Show 1
ElseIf activeSales.sold_to.customers_name <> "" Then
    If activeSales.items_sold.Count > 0 Then
        Dim ans As Byte
            ans = MsgBox("You are going to select different customer data." & vbCrLf & "All transaction will be cleared if you proceed." & vbCrLf & "Do you want to proceed?", vbYesNoCancel, "Change customer")
            If ans = vbYes Then
                Call cmdCancelTransaction_Click
            End If
    End If
End If
End Sub

Private Sub cmdBrowseCustomer_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF10 Then
    Call cmdCancelTransaction_Click
End If
End Sub

Private Sub cmdBrowseItem_Click()
If activeSales.sold_to.customers_name <> "" Or chkWalkInCustomer.Value = 1 Then
    frmItemList.Show 1
Else
    MsgBox "Please select customer type", vbInformation, "Customer type"
End If
End Sub

Private Sub cmdBrowseItem_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF10 Then
    Call cmdCancelTransaction_Click
End If
End Sub

Private Sub cmdCancelTransaction_Click()
    Call prepareNewTransaction
    cmdNewAccountReceivable.SetFocus
End Sub

Private Sub cmdClose_Click()
    End
End Sub

Private Sub cmdCustomer_Click()
    'frmCustomer.Show vbModal
    frmManageCustomer.Show 1
End Sub

Private Sub cmdInventory_Click()
    frmInventory.Show 1
End Sub

Private Sub cmdManageItem_Click()
    frmManageItem.Show
End Sub

Private Sub cmdNewAccountReceivable_Click()
Dim intHour As Integer
Dim intMinute As Integer
Dim intSecond As Integer
Dim dtmNewTime As Date

intHour = DatePart("h", Now)
intMinute = DatePart("n", Now)
intSecond = DatePart("s", Now)

Call newTransaction
cmdNewTransaction.Visible = False
Set activeSales = New Sales
activeSales.payment_type = PAYMENT_ACCOUNT_RECEIVABLE
lblPaymentType.Caption = "ACCOUNT RECEIVABLE"
activeSales.date_transact = Format(Date, "YYYY-mm-dd") & " " & intHour & ":" & intMinute & ":" & intSecond

cmdBrowseItem.SetFocus
End Sub

Private Sub cmdNewAccountReceivable_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF2 Then
    cmdNewAccountReceivable_Click
ElseIf KeyCode = vbKeyF3 Then
    cmdNewTransaction_Click
End If
End Sub

Private Sub cmdNewTransaction_Click()
Dim date_transact As Date
Dim intHour As Integer
Dim intMinute As Integer
Dim intSecond As Integer
Dim dtmNewTime As Date

intHour = DatePart("h", Now)
intMinute = DatePart("n", Now)
intSecond = DatePart("s", Now)
 
date_transact = TimeSerial(intHour, intMinute, intSecond)

Call newTransaction
cmdNewTransaction.Visible = False
Set activeSales = New Sales
activeSales.payment_type = PAYMENT_COD
lblPaymentType.Caption = "CASH ON DELIVERY"
activeSales.date_transact = Format(Date, "YYYY-mm-dd") & " " & intHour & ":" & intMinute & ":" & intSecond

cmdBrowseItem.SetFocus
End Sub

Private Sub cmdPayment_Click()
    frmPayment.Show
End Sub

Private Sub cmdProcess_Click()
'Call prepareNewTransaction
'cmdNewTransaction.Visible = True
If lsvItemsInCart.ListItems.Count > 0 Then
    frmSummary.Show 1
Else
    MsgBox "There are no items in the cart, cannot proceed...", vbInformation, "No items in cart"
End If
End Sub

Private Sub cmdStockIn_Click()
    frmStockIn.Show
End Sub

Private Sub Command1_Click()
    
End Sub

Private Sub cmdView_Click()
    frmViewList.Show vbModal
End Sub

Private Sub Command2_Click()
Dim cntl As Control


End Sub

Private Sub Command4_Click()

End Sub

Private Sub cmdViewSales_Click()
frmViewSales.Show
End Sub

Private Sub Form_Load()
    lblDate.Caption = FormatDateTime(Date, vbLongDate)
    lblUser.Caption = activeUser.username
    cmdPayment.Enabled = True
    cmdStockout.Enabled = False
    'cmdInventory.Enabled = False
    Call renderButtonBasedOnUserPreviliges
End Sub


Private Sub imgLogout_Click()
If cmdCancelTransaction.Visible = True Then
    MsgBox "You have a current transaction pending. Please finish or cancel transaction before logging out... "
Else
    If MsgBox("Are you sure you want to logout?", vbYesNo + vbInformation, "Logout") = vbYes Then
        Call resetAllGlobalVars
        Unload mdi_Inventory
        frmLogIn.Show
    End If
End If


End Sub

Private Sub lblChangePassword_Click()
frmUpdatePassword.Show 1
End Sub

Private Sub lsvItemsInCart_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF10 Then
    Call cmdCancelTransaction_Click
End If
End Sub

Private Sub lsvItemsInCart_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 2 Then
    PopupMenu mdi_Inventory.mnu_sub
End If
End Sub

Private Sub mnu_delete_item_Click()
        
End Sub

Private Sub Timer1_Timer()
lblTime.Caption = Format(Time$, "hh:mm:ss AM/PM")
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)

If Button.Key = "manage_item" Then
    Call cmdManageItem_Click
End If
If Button.Key = "manage_customer" Then
    Call cmdCustomer_Click
End If
If Button.Key = "manage_stockin" Then
    Call cmdStockIn_Click
End If
If Button.Key = "payment" Then
    Call cmdPayment_Click
End If
If Button.Key = "manage_item" Then
    Call cmdManageItem_Click
End If
If Button.Key = "inventory" Then
    Call cmdInventory_Click
End If
If Button.Key = "view_records" Then
    Call cmdView_Click
End If

End Sub

Private Sub txtCustomers_Click()
cmdBrowseCustomer_Click
'checkProcessButton
End Sub

Private Sub txtCustomers_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF10 Then
    Call cmdCancelTransaction_Click
End If
End Sub

Private Sub txtItemsList_Click()
    cmdBrowseItem_Click
End Sub
