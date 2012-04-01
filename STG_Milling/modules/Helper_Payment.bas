Attribute VB_Name = "Helper_Payment"
Function getTotalPaymentReceiveToday(details_date As Date) As Double
    Dim rs As New ADODB.Recordset
    Dim sql As String
    
    sql = "SELECT SUM(amount) FROM `payment_records` " & _
          "  Where DATE_FORMAT(payment_date, '%Y-%m-%d') = '" & Format(details_date, "yyyy-mm-dd") & "'" & _
          "  GROUP BY payment_date"
    Set rs = db.execute(sql)
    If rs.RecordCount > 0 Then
        getTotalPaymentReceiveToday = rs.Fields(0).Value
    End If
End Function
'Where DATE_FORMAT(payment_date, '%Y-%m-%d') = CURDATE()
Sub loadPaymentDetailsOnListView(lsv As ListView, details_date As Date)
    Dim rs As New ADODB.Recordset
    Dim sql As String
    Dim list As ListItem
    
    sql = "SELECT pr.`id`, pr.`sales_order_no`,c.customers_name, pr.`amount`, pr.`balance`, pr.`payment_date`, pr.`remarks`,pr.received_by " & _
          "  FROM `payment_records` pr " & _
          "  LEFT JOIN stock_out_transaction sot " & _
          "  ON pr.sales_order_no = sot.sales_order_no " & _
          "  LEFT JOIN customers c " & _
          "  ON sot.responsible_customer = c.customers_id " & _
          " WHERE DATE_FORMAT(pr.payment_date, '%Y-%m-%d') = '" & Format(details_date, "yyyy-mm-dd") & "'"
          
    Set rs = db.execute(sql)
    lsv.ListItems.Clear
    On Error Resume Next
    If rs.RecordCount > 0 Then
        Do Until rs.EOF
            Set list = lsv.ListItems.Add(, , rs.Fields(0).Value)
                list.SubItems(1) = rs.Fields(1).Value
                list.SubItems(2) = rs.Fields(2).Value
                list.SubItems(3) = rs.Fields(3).Value
                list.SubItems(4) = rs.Fields(4).Value
                list.SubItems(5) = rs.Fields(5).Value
                list.SubItems(6) = rs.Fields("remarks").Value
                list.SubItems(7) = rs.Fields("received_by").Value
            rs.MoveNext
        Loop
    End If
End Sub
