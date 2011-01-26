class AddRegistrationForSideColumn < ActiveRecord::Migration
  def self.up
    change_column :properties, :body, :text, :default => '<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;"><strong>&nbsp;Location Info</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td width="20%" valign="top">City</td>
<td id="userdefined12_td" width="30%" valign="top"><br /></td>
<td width="20%" valign="top">County</td>
<td id="userdefined13_td" width="30%" valign="top"><br /></td>
</tr>
</tbody>
</table>
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;"><strong>&nbsp;General Description</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td colspan="2">&nbsp;</td>
</tr>
</tbody>
</table>
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;"><strong>&nbsp;Contract Info</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td width="20%" valign="top">Original List Price</td>
<td id="orig_list_price_td" width="30%" valign="top"><br /></td>
<td width="20%" valign="top">Primary Listing</td>
<td id="userdefined5_td" width="30%" valign="top"><br /></td>
</tr>
<tr>
<td width="20%" valign="top">Status</td>
<td id="status_td" width="30%" valign="top">Active&nbsp;</td>
</tr>
</tbody>
</table>
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;"><strong>&nbsp;Property Information</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td width="20%" valign="top">Home Type</td>
<td id="book_sec_td" width="30%" valign="top">&nbsp;</td>
<td width="20%" valign="top">Total Half Baths</td>
<td id="baths_full_td" width="30%" valign="top"><br /></td>
</tr>
<tr>
<td width="20%" valign="top">Apx Lot SqFt</td>
<td id="sqft4_td" width="30%" valign="top"><br /></td>
<td width="20%" valign="top">Apx # Acres</td>
<td id="lock_box_nbr_td" width="30%" valign="top"><br /></td>
</tr>
<tr>
<td width="20%" valign="top">Total #Units</td>
<td id="total_rooms_td" width="30%" valign="top">1</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;"><strong>&nbsp;Assessor\'s Data</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td width="20%" valign="top">Year Built</td>
<td id="userdefined30_td" width="30%" valign="top"><br /></td>
<td width="20%" valign="top">SqFt</td>
<td id="userdefined29_td" width="30%" valign="top"><br /></td>
</tr>
<tr>
<td width="20%" valign="top">Lot Acres</td>
<td id="userdefined28_td" width="30%" valign="top"><br /></td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;"><strong>&nbsp;Neighborhood/Schools</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td width="20%" valign="top">Neighborhood</td>
<td id="subdivision_td" width="30%" valign="top"><br /></td>
<td width="20%" valign="top">Elementary School</td>
<td id="userdefined8_td" width="30%" valign="top"><br /></td>
</tr>
<tr>
<td width="20%" valign="top">Junior High School</td>
<td id="userdefined9_td" width="30%" valign="top"><br /></td>
<td width="20%" valign="top">High School</td>
<td id="userdefined10_td" width="30%" valign="top"><br /></td>
</tr>
</tbody>
</table>
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;"><strong>&nbsp;Owner Info</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td width="20%" valign="top">Deposit</td>
<td id="sqft3_td" width="30%" valign="top"><br /></td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td width="50%" valign="top">
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;">&nbsp;<strong>Details</strong></span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1" align="center">
<tbody>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Condition: </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Construction: </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Roof: </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Foundation: </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Parking/Garage: </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Proximity: </strong></td>
<td><br /></td>
</tr>
</tbody>
</table>
</td>
<td width="50%" valign="top">
<table style="width: 100%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr bgcolor="#b3c4e5">
<td><span style="font-size: 10pt; font-family: Arial,Helvetica;">&nbsp;</span></td>
</tr>
</tbody>
</table>
<table style="font-family: Arial,Helvetica; font-size: 8pt; width: 100%;" border="0" cellspacing="1" cellpadding="1" align="center">
<tbody>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Fireplace(s): </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Heating/Cooling: </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Zoning: </strong></td>
<td><br /></td>
</tr>
<tr valign="top">
<td style="padding-right: 2px;" width="40%"><strong>Terms: </strong></td>
<td><br /></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>'
    property_type = ColumnSectionType.create(:title => "Register", :controller_name => "profiles", :partial_name => "register_for_side_column")
    ColumnSection.create(:title => "Register", :column_section_type_id => property_type.id, :column_id => 1)
  end

  def self.down
  end
end
