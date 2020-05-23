!/bin/bash -x
function add()
{
echo $(($1+$2))
}


function div()
{
echo $(($1/$2))
}
function Modulo()
{
echo $(($1/$2))
}

function sub()
{
echo $(($1-$2))
}
result= $(mul 15 10)
