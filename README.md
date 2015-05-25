# bashlanguage
create and use language packages in bash scripts

Usage

include the language script in your script

    source ./bashlanguage/language.bash

use the language packages about your named array objects

    lout "L_HELLO" => Hello 
    lout "HELLO" => Hello
    lout "HELLO" => Hello World!

define your named arrays/objects in the json files. 

    ./bashlanguage/lang/lang_xx.json
    xx = language short code (en de ...)

to edit and check the json files you can use a json online editor f.e. https://www.jsoneditoronline.org/
