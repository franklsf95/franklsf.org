LEN = 17;
CODE = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
Y = ['1','0','X','9','8','7','6','5','4','3','2'];
function ret(str)
{
    document.getElementById("return").innerHTML = str;
}
function go(str)
{
    if( str.length == LEN )
    {
        //calculate
        ret('Checksum is ' + getCheckSum(str));
    }
    else if( str.length == LEN+1 )
    {
        //validate
        var s = getCheckSum(str);
        if( s == str[LEN] )
            ret('CORRECT! Checksum = ' + s);
        else
            ret('WRONG! Checksum should be ' + s + ', not ' + str[LEN] + ', you idiot!');
    }
    else
        ret('Enter 17 or 18 digits.');
}
function getCheckSum(str)
{
    var checksum = 0;
    for (var i = 0; i < LEN; ++i)
    {
        checksum += CODE[i] * parseInt(str[i]);
    }
    return Y[ checksum % 11 ];
}
