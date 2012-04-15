Attribute VB_Name = "Helper_Rebates"
Sub loadItemsQualifiedForRebatesByCustomer(customer_id As Integer, monthCovered As String, lsv As ListView)
Dim sql As String
Dim rs As New ADODB.Recordset
Dim list As ListItem

sql = "SELECT  " & _
      "     sotsot.stockout_id," & _
      "     s.item_id," & _
      "     id.item_name," & _
      "     SUM(s.qty_out) as total_bought," & _
      "     id.unit_of_measure " & _
      "  FROM `stock_out_transaction` sot" & _
      "     inner join `stock_out_transaction_stock_out_items` sotsot " & _
      "     inner join stock_out s ON sotsot.stockout_id = s.stockout_id " & _
      "     inner join items i ON s.item_id = i.item_id " & _
      "     inner join items_description id ON i.item_code = id.item_code " & _
      "  where DATE_FORMAT(sot.delivery_date, '%M') = '" & monthCovered & "' " & _
      "  AND sot.responsible_customer = " & customer_id & " " & _
      "  AND i.include_in_rebate = 1 " & _
      "  GROUP BY s.item_id"

Set rs = db.execute(sql)
lsv.ListItems.Clear
If rs.RecordCount > 0 Then
    Do Until rs.EOF
        Set list = lsv.ListItems.Add(, , rs.Fields(0).Value)
        list.SubItems(1) = rs.Fields(1).Value
        list.SubItems(2) = rs.Fields(2).Value
        list.SubItems(3) = rs.Fields(3).Value
        list.SubItems(4) = rs.Fields(4).Value
    rs.MoveNext
    Loop
End If

End Sub
