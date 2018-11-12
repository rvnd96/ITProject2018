<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Calculate Budget...! </title>


<script language="JavaScript" type="text/javascript">
function calcpayments()

{
var nprice=document.forms[0].nprice.value*1;

var salestax=document.forms[0].tax.value*1;
var interest=document.forms[0].rate.value*1;
var dpayment=document.forms[0].payment.value*1;
var nmonth=document.forms[0].month.value*1;
var t;

1


var y=(salestax+nprice+interest+dpayment+nmonth);
var z=(y-dpayment);
var resultz=(((z*(interest/100))/12)+z);
var result=resultz/nmonth;
result=Math.round(result*100)/100;



document.getElementById("monthlypayment").innerHTML=y;

}

</script>





    <style>
      .content { position: relative; background: #2874A6;  height: 800px; border: 1px solid #6666ff;}
      .content div { position: relative; width: 45%; padding: 10px; }
      .//blue { right: 170px; bottom: 0; background: #1c87c9; }
      .green { top: 60px;height: 700px; left: 410px; width: 500px; background: #FDFEFE; }
    </style>
  </head>
  <body>
    <div class="content">
      

      <div class="green">

        
<h3> Calculate Event Budget...</h3>

<div align="left">
<div id="calclpayment">
        <form>
        <strong>
          <br />

<br />
<table width="50%" align="left">
          <td width="176"><div align="left">Venue Expenses:*</div></td>
              <td width="144"><input type= "text" name="nprice" /></td>
      </tr>
          <tr>
            <td><div align="left">Refreshent Expenses:*</div></td>
        <td><input type="text" name="tax"/>&nbsp;</td>
        <td width="58"></td>
      </tr>
          
          <tr>
            <td><div align="left">Promotions Expenses:*</div></td>
        <td>
          <input type="irate" name="rate" />&nbsp;
             </td>
        <td></td>
      </tr>
          <tr>
            <td><div align="left">Miscelleneous Expenses:</div></td>
        <td><label>
          <input type="downpayment" name="payment" />
          </label>      </td>
      </tr>
	  <tr>
            <td><div align="left">Servise Expenses:</div></td>
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
  <b>Your Grand Total Expenses is:</b>  <br />
  <br />

  <div id="monthlypayment" style="font-size: 25px;background-color:#fffff; 
font-weight: bold; width: 100px; padding: 5px; color:#ff0000;" > 0  </div>
      </form>
  
  </div>
          <br />
          <br />
        </p>
    </div>

      </div>
    </div>
  </body>
</html>