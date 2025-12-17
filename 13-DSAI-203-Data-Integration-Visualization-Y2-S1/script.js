let num = 0;
function incrementnum(){
    num += 1;
    document.getElementById('num').textContent = number;
}

document.getElementById('incrementer').addEventListener('click', incrementnum);