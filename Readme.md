# PAYONE Payment Plugin for Oxid 5

![CI Status](https://img.shields.io/github/workflow/status/PAYONE-GmbH/oxid-5/CI)
![License](https://img.shields.io/github/license/PAYONE-GmbH/oxid-5)
![Latest release version (semver)](https://img.shields.io/github/v/release/PAYONE-GmbH/oxid-5)

The official extension for Oxid 5 to enable payment for your
website via PAYONE service.

## Installation
### Prerequisites
You should have your PAYONE API credentials. If you still don't have
them, [contact PAYONE](https://payone.com).

Software requirements:
- installed Oxid eShop > v4.7.0

### Install
1.	Extract the module-package.
2.	Copy the content of the folder "copy_this" into your shop root-folder (where config.inc.php lies).
3.	Go to Extensions->Modules, select the "PAYONE Payment for Oxid eShop" extension and press the "Activate" Button in the "Overview" tab.
4.	Next you need to deposit a transaction url in the PAYONE-Webinterface at Konfiguration -> Zahlungsportale -> YOUR_PORTAL -> Erweitert -> TransactionStatus URL. The URL has to look like this: http://->YOUR_SHOP<-/modules/fcPayOne/status.php
5.	Empty "tmp" folder.
6. 	There is a new menu item in the OXID-Interface named PAYONE. Here you can set your merchant connect data.

## Features
- Certified by Oxid
- Seamless integration in the checkout processes
- Centralised administration within Oxid
- The offered portfolio of payment options can be controlled depending on the consumer's credit rating
- The payment extension is compatible with all Oxid eShop editions of version 6: Community, Professional and Enterprise edition
- Supports simplified PCI DSS conformity in accordance with SAQ A

## Documentation
You can check [the documentation on our website here](https://docs.payone.com/display/public/INT/Oxid+5+Extension).

More information can be found [on FATCHIP site](https://www.fatchip.de/Plugins/OXID-eShop/OXID-PAYONE-Connector.html).

## Notes
### Update
If you are updating from Version 1.52 or lower:
1.	Deactivate the "Payone FinanceGate"
2.	Delete the following files/folder from your server:

#####Folder application/contollers/admin:
* fcpayone_admin.php
* fcpayone_apilog.php
* fcpayone_apilog_list.php
* fcpayone_apilog_main.php
* fcpayone_boni.php
* fcpayone_boni_list.php
* fcpayone_boni_main.php
* fcpayone_common.php
* fcpayone_list.php
* fcpayone_log.php
* fcpayone_log_list.php
* fcpayone_main.php
* fcpayone_order.php
* fcpayone_protocol.php
* fcpayone_status_forwarding.php
* fcpayone_status_mapping.php
* fcpayone_support.php
* fcpayone_support_list.php
* fcpayone_support_main.php

#####Folder application/contollers/admin/inc:
* fcpayone_main.inc.php

#####Folder application/models:
* fcpoconfig.php
* fcporequest.php
* fcporequestlog.php
* fcpotransactionstatus.php

Folder application/views/admin/de:
* fcPayOne_lang.php

#####Folder application/views/admin/en:
* fcPayOne_lang.php

#####Folder application/views/admin/tpl:
* fcpayone.tpl
* fcpayone_apilog.tpl
* fcpayone_apilog_list.tpl
* fcpayone_apilog_main.tpl
* fcpayone_boni.tpl
* fcpayone_boni_list.tpl
* fcpayone_boni_main.tpl
* fcpayone_cc_preview.tpl
* fcpayone_list.tpl
* fcpayone_log.tpl
* fcpayone_log_list.tpl
* fcpayone_main.tpl
* fcpayone_order.tpl
* fcpayone_protocol.tpl
* fcpayone_status_forwarding.tpl
* fcpayone_status_mapping.tpl

#####Folder application/views/admin/tpl/popups:
* fcpayone_main.tpl

#####Folder modules/fcPayOne:
* completely!

#####Folder out\admin\img:
* certified_extension_100px.png
* logoclaim.gif

3.	Copy the content of "copy this" into your shop root-folder (where config.inc.php lies).
4.	Activate the "PAYONE Payment for Oxid eShop"

If you updating from version 2.x or higher:
1. Deactivate the "PAYONE Payment for Oxid eShop"
2. Copy the content of "copy this" into your shop root-folder (where config.inc.php lies).
3. Activate the "PAYONE Payment for Oxid eShop"

### Notice
When you are using the creditcard iframe payment-method there is no transaction-id ( txid ) at the moment
where the order is created. The transaction-id will be filled in seconds later, when the first
"TransactionStatus" from Payone comes in. So when using pixi or another ERP where the transaction-id
is needed, make sure to export the order only when the transaction-id is already there.

## Contact
PAYONE GmbH<br>
Office Kiel<br>
Fraunhoferstraße 2-4<br>
24118 Kiel, Germany<br>
Phone +49 431 25968-400<br>
sales@payone.com<br>
tech.support@payone.com<br>

