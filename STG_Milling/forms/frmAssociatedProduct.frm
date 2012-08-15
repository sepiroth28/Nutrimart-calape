VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmAssociatedProduct 
   Appearance      =   0  'Flat
   BackColor       =   &H00C8761C&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Associated Product to be converted"
   ClientHeight    =   5595
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   11715
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5595
   ScaleWidth      =   11715
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSelect 
      Caption         =   "SELECT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   8490
      TabIndex        =   1
      Top             =   5010
      Width           =   3165
   End
   Begin VB.TextBox txtItemCodeSearch 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   60
      TabIndex        =   0
      Top             =   5010
      Width           =   8415
   End
   Begin MSComctlLib.ListView lsvItemList 
      Height          =   4965
      Left            =   60
      TabIndex        =   2
      Top             =   30
      Width           =   11595
      _ExtentX        =   20452
      _ExtentY        =   8758
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
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
End
Attribute VB_Name = "frmAssociatedProduct"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSelect_Click()
Dim item_code As String
item_code = lsvItemList.SelectedItem.SubItems(1)
activeAssociatedItemCode = item_code
activeTextbox.Text = item_code
Unload Me
End Sub

Private Sub Form_Load()
Call setItemsDescriptionColumns(lsvItemList)
lsvItemList.ColumnHeaders(1).width = 0
lsvItemList.ColumnHeaders(2).width = 4000
lsvItemList.ColumnHeaders(3).width = 0
lsvItemList.ColumnHeaders(4).width = 0
lsvItemList.ColumnHeaders(5).width = 2000
lsvItemList.ColumnHeaders(6).width = 2000
lsvItemList.ColumnHeaders(7).width = 2000
lsvItemList.ColumnHeaders(8).width = 0
lsvItemList.ColumnHeaders(9).width = 0
Call loadAllItemsToListview(lsvItemList, "item_code")
End Sub

Private Sub lsvItemList_DblClick()
Dim item_code As String
item_code = lsvItemList.SelectedItem.SubItems(1)
activeAssociatedItemCode = item_code
activeTextbox.Text = item_code
Unload Me
End Sub
