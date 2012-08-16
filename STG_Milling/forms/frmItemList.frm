VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form frmItemList 
   Appearance      =   0  'Flat
   BackColor       =   &H80000018&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Item List"
   ClientHeight    =   8430
   ClientLeft      =   30
   ClientTop       =   360
   ClientWidth     =   11775
   Icon            =   "frmItemList.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8430
   ScaleWidth      =   11775
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      ForeColor       =   &H80000008&
      Height          =   732
      Left            =   60
      ScaleHeight     =   705
      ScaleWidth      =   11565
      TabIndex        =   5
      Top             =   6780
      Width           =   11595
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         BackColor       =   &H00C7FEF3&
         ForeColor       =   &H80000008&
         Height          =   555
         Left            =   8760
         ScaleHeight     =   525
         ScaleWidth      =   2685
         TabIndex        =   7
         Top             =   60
         Width           =   2715
         Begin VB.Label lblAvailability 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C8761C&
            Height          =   315
            Left            =   180
            TabIndex        =   8
            Top             =   120
            Width           =   2355
         End
      End
      Begin VB.Label lblSelectedItem 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   180
         TabIndex        =   6
         Top             =   180
         Width           =   5055
      End
   End
   Begin VB.TextBox txtQty 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   6540
      TabIndex        =   1
      Text            =   "1"
      Top             =   7620
      Width           =   1632
   End
   Begin VB.TextBox txtSearchItem 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   60
      TabIndex        =   0
      Top             =   7620
      Width           =   4332
   End
   Begin VB.CommandButton cmdSelect 
      Caption         =   "DONE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   8280
      TabIndex        =   2
      Top             =   7620
      Width           =   3375
   End
   Begin MSComctlLib.ListView lsvItemList 
      Height          =   2115
      Left            =   60
      TabIndex        =   3
      Top             =   4560
      Width           =   11595
      _ExtentX        =   20452
      _ExtentY        =   3731
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
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid gridItem 
      Height          =   4455
      Left            =   0
      TabIndex        =   9
      Top             =   0
      Width           =   11655
      _ExtentX        =   20558
      _ExtentY        =   7858
      _Version        =   393216
      Rows            =   1
      Cols            =   6
      FixedRows       =   0
      FixedCols       =   0
      GridLinesFixed  =   1
      AllowUserResizing=   1
      RowSizingMode   =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _NumberOfBands  =   1
      _Band(0).BandIndent=   3
      _Band(0).Cols   =   6
      _Band(0).GridLinesBand=   1
      _Band(0).TextStyleBand=   0
      _Band(0).TextStyleHeader=   0
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "QTY"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   5700
      TabIndex        =   4
      Top             =   7740
      Width           =   810
   End
End
Attribute VB_Name = "frmItemList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSelect_Click()
Dim confirm As Byte
confirm = MsgBox("Please review the item quantity, are you sure you want to proceed?", vbQuestion + vbYesNo)
If confirm = vbYes Then
    Dim counter As Long
    Dim get_prodcode As Integer
    Dim r As Integer
    r = 1
    On Error GoTo err:
    For counter = 1 To gridItem.Rows
    getcode = gridItem.TextMatrix(r, 0)
    
       
        amount_to_be_debt = activeSales.get_total_amount
        Dim items As New cart_items
        
        If activeSales.isSoldToWalkIn Then
                'Call items.Item.load_item(Val(lsvItemList.SelectedItem.Text))
                Call items.Item.load_item(Val(gridItem.TextMatrix(r, 0)))
                'items.qty_purchased = Val(txtQty.Text)
                items.qty_purchased = Val(gridItem.TextMatrix(r, 5))
        
                items.item_price = items.Item.item_price
               ' items.tracking_price = getTrackingPriceOfCurrentCustomer(activeSales.sold_to.customers_id)
                items.tracking_price = 0
                If items.Item.item_qty >= items.qty_purchased Then
                    Call activeSales.items_sold.Add(items)
                    
                    'add item to active cart items
                    Call loadActiveCartItems(frmMenu.lsvItemsInCart)
                    Call updateTotalAmount
                    
                    'Unload Me
                Else
                    MsgBox "Cannot transact " & items.Item.item_name & ", insufficient stock remain", vbInformation, "Insufficient stock"
                End If
        Else
                If isInLimit(activeSales.sold_to.customers_id) Then
                    MsgBox "Customers reach his/her credit limit...Please refer to the SO history of this customer", vbInformation, "Credit Limit reached"
                Else
                    'put loop here base on grid items
                    
                         'Call items.Item.load_item(Val(lsvItemList.SelectedItem.Text))
                         Call items.Item.load_item(Val(gridItem.TextMatrix(r, 0)))
                            items.item_price = getPriceToBeUsed(items)
                            amount_to_be_debt = activeSales.get_total_amount + items.item_price
                        If isInLimit(activeSales.sold_to.customers_id) Then
                            MsgBox "Customers reach his/her credit limit...Please refer to the SO history of this customer", vbInformation, "Credit Limit reached"
                        Else
                            'items.qty_purchased = Val(txtQty.Text)
                            items.qty_purchased = Val(gridItem.TextMatrix(r, 5))
                            'by rodz
'                            MsgBox (items.Item.item_with_tracking)
'                            MsgBox (items.Item.item_with_half_tracking)
                            If items.Item.item_with_tracking = 1 And items.Item.item_with_half_tracking = 0 Then
                            items.tracking_price = getTrackingPriceOfCurrentCustomer(activeSales.sold_to.customers_id)
                            ElseIf items.Item.item_with_tracking = 1 And items.Item.item_with_half_tracking = 1 Then
                            items.tracking_price = getTrackingPriceOfCurrentCustomer(activeSales.sold_to.customers_id) / 2
                            Else
                            items.tracking_price = 0
                            End If
                            'checking the remaining stocks
                            If items.Item.item_qty >= items.qty_purchased Then
                                Call activeSales.items_sold.Add(items)
                                Call loadActiveCartItems(frmMenu.lsvItemsInCart)
                                Call updateTotalAmount
                                
                                'Unload Me
                            Else
                                MsgBox "Cannot transact " & items.Item.item_name & ", insufficient stock remain", vbInformation, "Insufficient stock"
                            End If
                        End If
                        
                End If
        End If
    
    r = r + 1
    'MsgBox (getcode)
    Next
err:
    If err.Number = 381 Then
    End If
       Unload Me
End If
    
End Sub


Private Sub Form_Load()
'Call setItemsDescriptionColumns(lsvItemList)
'lsvItemList.ColumnHeaders(1).width = 0
'lsvItemList.ColumnHeaders(2).width = 4000
'lsvItemList.ColumnHeaders(3).width = 0
'lsvItemList.ColumnHeaders(4).width = 0
'lsvItemList.ColumnHeaders(5).width = 2000
'lsvItemList.ColumnHeaders(6).width = 2000
'lsvItemList.ColumnHeaders(7).width = 2000
'lsvItemList.ColumnHeaders(8).width = 0
'lsvItemList.ColumnHeaders(9).width = 0
'Call loadAllItemsToListview(lsvItemList, "item_code")
'cmdSelect.Enabled = False

lsvItemList.Visible = False

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
'cmdSelect.Enabled = False


' resize grid column
With gridItem
.ColWidth(0) = 0
.ColWidth(1) = 4000
.ColWidth(2) = 2000
.ColWidth(3) = 2000
.ColWidth(4) = 2000
.ColWidth(5) = 1500
.FixedCols = 5
.TextMatrix(0, 1) = "Item Code"
.TextMatrix(0, 2) = "No.of Stocks"
.TextMatrix(0, 3) = "Price"
.TextMatrix(0, 4) = "Dealers Price"
.TextMatrix(0, 5) = "Quantity"
End With
End Sub
Private Sub gridItem_EnterCell()
If gridItem.Row = 0 And gridItem.Col = 5 Then
gridItem.TextMatrix(gridItem.Row, gridItem.Col) = "Quantity"
Else
If overwrite = True Then
gridItem.TextMatrix(gridItem.Row, gridItem.Col) = ""
Else
gridItem.TextMatrix(gridItem.Row, gridItem.Col) = gridItem.TextMatrix(gridItem.Row, gridItem.Col) & Chr(KeyAscii)
End If
End If
End Sub

Private Sub gridItem_KeyDown(KeyCode As Integer, Shift As Integer)
overwrite = True
End Sub

Private Sub gridItem_KeyPress(KeyAscii As Integer)
If gridItem.Row = 0 And gridItem.Col = 5 Then
Else
    If KeyAscii < 8 Or KeyAscii > 8 And KeyAscii < 46 Or KeyAscii > 46 And KeyAscii < 48 Or KeyAscii > 57 And KeyAscii < 127 Or KeyAscii > 127 Then
        MsgBox ("numeric values only")
    Else
        If KeyAscii = 8 Then
                If gridItem.TextMatrix(gridItem.Row, gridItem.Col) = "" Then
                Else
                    gridItem.TextMatrix(gridItem.Row, gridItem.Col) = Mid(gridItem.TextMatrix(gridItem.Row, gridItem.Col), 1, Len(gridItem.TextMatrix(gridItem.Row, gridItem.Col)) - 1)
                End If
        ElseIf KeyAscii = 127 Then
                gridItem.RemoveItem (gridItem.Row)
        Else
                gridItem.TextMatrix(gridItem.Row, gridItem.Col) = gridItem.TextMatrix(gridItem.Row, gridItem.Col) & Chr(KeyAscii)
        End If
        End If
End If
End Sub

Private Sub lsvItemList_Click()
If lsvItemList.ListItems.Count > 0 Then
    Dim Item As New items
    lblSelectedItem.Caption = lsvItemList.SelectedItem.SubItems(2)
    
    Item.load_item (Val(lsvItemList.SelectedItem.Text))
    lblAvailability.Caption = Item.displayAvailability
        If Item.checkStockQty Then
            cmdSelect.Enabled = True
        Else
            cmdSelect.Enabled = False
        End If
    Set Item = Nothing
End If
End Sub

Private Sub lsvItemList_DblClick()

    Dim items As New cart_items
    Call items.Item.load_item(Val(lsvItemList.SelectedItem.Text))
    items.item_price = items.Item.item_price
    items.qty_purchased = Val(txtQty.Text)
    
    Call activeSales.items_sold.Add(items)
    Call loadActiveCartItems(frmMenu.lsvItemsInCart)
    Call updateTotalAmount
    Unload Me
    
End Sub

Private Sub lsvItemList_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
    Unload Me
End If
End Sub

Private Sub lsvItemList_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
        'to do: put function here that transfer record from listview to grid
        If lsvItemList.ListItems.Count < 1 Or txtSearchItem.Text = "" Then
            MsgBox "Item Code not found", vbCritical, "No Item Code Found"
            txtSearchItem.Text = ""
        Else
           Call addItemToGrid(lsvItemList.ListItems(1), gridItem)
        End If
    End If
With txtSearchItem
.Text = ""
.SetFocus
End With

End Sub

Private Sub txtQty_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
    Unload Me
End If
End Sub

Private Sub txtSearchItem_Change()
'Dim rs As New ADODB.Recordset
'Set rs = searchItemsByItemCode(txtSearchItem.Text)
'Call loadItemRSToListCiew(lsvItemList, rs)
Dim rs As New ADODB.Recordset
lsvItemList.Visible = True
Dim i As ListItem
Set rs = searchItemsByItemCode(txtSearchItem.Text)
Call loadItemRSToListCiew(lsvItemList, rs)

If txtSearchItem.Text = "" Then
    lsvItemList.DropHighlight = Nothing
Else
    lsvItemList.DropHighlight = lsvItemList.GetFirstVisible()
End If
End Sub

Private Sub txtSearchItem_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = vbKeyEscape Then
'    Unload Me
'End If
If KeyCode = vbKeyEscape Then
    Unload Me
End If
If KeyCode = 40 Then
lsvItemList.DropHighlight = Nothing
lsvItemList.SetFocus
End If
End Sub

Private Sub txtSearchItem_KeyPress(KeyAscii As Integer)
   If KeyAscii = 13 Then
        'to do: put function here that transfer record from listview to grid
        If lsvItemList.ListItems.Count < 1 Or txtSearchItem.Text = "" Then
            MsgBox "Item Code not found", vbCritical, "No Item Code Found"
            txtSearchItem.Text = ""
        Else
            If lsvItemList.SelectedItem.SubItems(4) < 1 Then
                MsgBox "cannot transact,Insufficient Stock remaining", vbInformation, "Insufficient Stock"
                txtSearchItem.Text = ""
            Else
                Call addItemToGrid(lsvItemList.ListItems(1), gridItem)
            End If
        End If
    End If
End Sub
