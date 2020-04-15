


import 'package:flutter/material.dart';

final _icons = <String, IconData> {

'add_alert'     : Icons.add_alert,
'accessibility' : Icons.vignette,
'folder_open'   : Icons.aspect_ratio, 
'donut_large'   : Icons.account_balance_wallet, 
'input'         : Icons.input, 
'sliders'       : Icons.zoom_out_map, 
'list'          : Icons.vertical_align_top, 
};


Icon getIcon( String nombreIcono ){

  return Icon( _icons[nombreIcono], color: Colors.black, );

}

