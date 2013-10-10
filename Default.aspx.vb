
Partial Class _Default
    Inherits System.Web.UI.Page



    Protected Sub ButtonClear_Click(sender As Object, e As EventArgs) Handles ButtonClear.Click
        TBHours.Text = ""
        TBPostTax.Text = ""
        TBPreTax.Text = ""
        TBWage.Text = ""
        LblResult.Text = ""

    End Sub

    Protected Sub ButtonCalc_Click(sender As Object, e As EventArgs) Handles ButtonCalc.Click
        Dim hours As Double
        Dim pretax As Double
        Dim posttax As Double
        Dim wage As Double


        Dim gross As Double
        Dim tax As Double
        Dim net As Double
        Dim final As String



        hours = CDbl(TBHours.Text)
        If TBPreTax.Text = "" Then
            pretax = 0
        ElseIf TBPreTax.Text <> "" Then
            pretax = CDbl(TBPreTax.Text)
        End If

        If TBPostTax.Text = "" Then
            posttax = 0
        ElseIf TBPostTax.Text <> "" Then
            posttax = CDbl(TBPostTax.Text)
        End If

        wage = CDbl(TBWage.Text)

        gross = hours * wage

        If gross > 500 Then
            tax = 0.22
        ElseIf gross <= 500 Then
            tax = 0.18
        End If

        net = gross - pretax

        net = net * (1 - tax)

        net = net - posttax

        final = "Your net pay for the period is: " + String.Format("{0:C}", net)


        LblResult.Text = final



    End Sub

End Class
