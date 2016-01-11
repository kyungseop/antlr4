grammar T;
s : e {fmt.Println($e.result)} ;
e returns [String result]
    :   ID '=' e1=e    {$result = "(" + $ID.text + "=" + $e1.result + ")";}
    |   ID             {$result = $ID.text;}
    |   e1=e '+' e2=e  {$result = "(" + $e1.result + "+" + $e2.result + ")";}
    ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;
