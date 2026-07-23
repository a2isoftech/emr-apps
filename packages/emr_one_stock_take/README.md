## Features

This is the Stock Take App designed to replace the T2 solution to be released along side WB. 

This app allows users to search their yard for stock takes, create/edit current stock takes and complete active stock takes. Different levels of permissions will be defined by user roles. 


## Design 

This module uses a trail MVC architecture where the controllers for each screen use a base controller, which is then combined with some mixin Controls to try to keep controllers clean. This will, for example allow a single decleration of a controller for a screen that comprises of multiple sub controllers. An example being the Active Stock Take screen. This allows the controller for searching through locations in the stock take and the location stock takes to be controller by the sub controllers both accessed through the same base controller.  other controls can be placed into sub controllers to better structure the code and hopefully lead away from break away controllers that constantly grow in size. The goal is simply to try and create a well written clean app that can easily be understood by whoever looks at this in the future. 

