<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<div align="center">
<select name="ln" id="ln" onChange="window.location='index.php?ln='+this.value">
  <option value="en" <?php if($ln=='en'){echo "selected";} ?>>En</option>
  <option value="dut" <?php if($ln=='dut'){echo "selected";} ?>>Dut</option>
  <option value="fr" <?php if($ln=='fr'){echo "selected";} ?>>Fr</option>
</select>


<?php
  if($ln =='en')
  {
	$content1 =   $arr[0]['en'];
	$content2 = $arr[1]['en'];
  }
  else if($ln =='dut')
  {
	$content1 =   $arr[0]['dut'];
	$content2 = $arr[1]['dut'];  
  }
  else if($ln =='fr')
  {
	 $content1 =   $arr[0]['fr'];
	 $content2 = $arr[1]['fr']; 
  }

?>

<h3><?=$content1?></h3>
<?=$content2?> 

</div>