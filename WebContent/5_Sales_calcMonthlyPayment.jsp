<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Calculate Payments Form</title>


<script language="JavaScript" type="text/javascript">
function calcpayments()

{
var nprice=document.forms[0].nprice.value*1;

var salestax=document.forms[0].tax.value*1;
var interest=document.forms[0].rate.value*1;
var dpayment=document.forms[0].payment.value*1;
var nmonth=document.forms[0].month.value*1;
var t;

for (i=0; i<document.forms[0].term.options.length; i++)

{

if (document.forms[0].term.options[i].selected)
t = document.forms[0].term.options[i].value*1;
}


var y=(nprice*(salestax/100)+nprice);
var z=(y-dpayment);
var resultz=(((z*(interest/100))/12)+z);
var result=resultz/nmonth;
result=Math.round(result*100)/100;



document.getElementById("monthlypayment").innerHTML=result;

}

</script>

</head>

<body>



<h3> calculate monthly payment</h3>

<div align="left">
<div id="calclpayment">
        <form>
        <strong>
          <br />
How much would you like to pay?:</strong> <br />
<br />
<table width="100%" align="left">
          <td width="176"><div align="left">Total price:*</div></td>
              <td width="144"><input type= "text" name="nprice" /></td>
      </tr>
          <tr>
            <td><div align="left">Sales tax:*</div></td>
        <td><input type="text" name="tax"/>&nbsp;%</td>
        <td width="58"></td>
      </tr>
          <tr>
            <td height="24"><div align="left">Term:</div></td>
        <td><div align="left">
          <select name="term">
            <option value="12">12 months</option>
            <option value="48">48 months</option>
            <option value="60">60 months</option>
          </select>
        </div></td>
      </tr>
          <tr>
            <td><div align="left">Interest Rate:*</div></td>
        <td>
          <input type="irate" name="rate" />&nbsp;%
             </td>
        <td></td>
      </tr>
          <tr>
            <td><div align="left">Down payment:</div></td>
        <td><label>
          <input type="downpayment" name="payment" />
          </label>      </td>
      </tr>
	  <tr>
            <td><div align="left">no of months:</div></td>
        <td><label>
          <input type="nm" name="month" />
          </label>      </td>
      </tr>
          <tr>
            <td>&nbsp;</td>
        <td><input name="Input" type="button" value="Calculate payments" onclick="calcpayments()"/></td>
        <br></br>
        
        <td><input name="reset2" type="reset" value="Clear" /></td>
      </tr>
          </table>
   <br />
  <b>Your estimated  monthly payment is:</b>  <br />
  <br />

  <div id="monthlypayment" style="font-size: 25px;background-color:#fffff; 
font-weight: bold; width: 100px; padding: 5px; color:#ff0000;" > 0  </div>
      </form>
  
  </div>
          <br />
          <br />
        </p>
    </div>

</body>
</html>
