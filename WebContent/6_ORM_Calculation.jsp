<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Calculate Budget...! </title>


<script language="JavaScript" type="text/javascript">
function calcpayments()

{
var qty1=document.forms[0].q1.value*1;

var qty2=document.forms[0].q2.value*1;
var qty3=document.forms[0].q3.value*1;



var y=(qty1*7500+qty2*6000+qty3*9500);



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
          <td width="176"><div align="left">Material_1:*</div></td>
              <td width="144"><input type= "text" name="mat_1" /></td>
      </tr>
          <tr>
            <td><div align="left">Quantity:*</div></td>
        <td><input type="text" name="q1"/>&nbsp;</td>
        <td width="58"></td>
      </tr>
          
          <tr>
            <td><div align="left">Material_2:*</div></td>
        <td>
          <input type="irate" name="mat_2" />&nbsp;
             </td>
        <td></td>
      </tr>
          <tr>
            <td><div align="left">Quantity:*</div></td>
        <td><label>
          <input type="downpayment" name="q2" />
          </label>      </td>
      </tr>
	  <tr>
            <td><div align="left">Material_3:*</div></td>
        <td><label>
          <input type="nm" name="mat_3" />
          </label>      </td>
      </tr>
          <tr>
          <td><div align="left">Quantity:*</div></td>
        <td><label>
          <input type="downpayment" name="q3" />
          </label>      </td>
      </tr>
          
          
          
          
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