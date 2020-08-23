//--------------------q2------------------------------//
var input = prompt("Enter Expression");

//--------------------q3(a)------------------------------//
let re = new RegExp('^The');
let re2 = new RegExp('hello$');
var res = re.test(input);
var res2 = re2.test(input);
console.log(res&&res2);
//--------------------q3(b)------------------------------//

re = /^h[aeiou]+t$/;
console.log(re.test(input));

//------------------q4-----------------------------//
var num = [12,14,17,18,15,16];

//---------------------a--------------------//
let result = num.filter(n => n>15);

console.log(result);

//-----------------------b--------------------//
result.forEach(myFun);
function myFun(item,index){
    console.log(index + ":" + item);
}

var newarray = result.map(newFun);

function newFun(num){
    return num*10;
}

console.log(newarray);




