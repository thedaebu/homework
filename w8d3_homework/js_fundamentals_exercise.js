function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// in the if function inside mysteryScoping1, x is reassigned and that is why 'in block' is logged twice

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// the constant declaration of x is different in the if function that it is outside of it but since they are constants, there is no reassignment

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// var declarations cannot reassign constants

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// in block then out of block
function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
}
// error

function madLib(verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`;
};

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

function fizzBuzz (array) {
    const arr = [];

    array.forEach(el) {
        if (el % 3 === 0); {
            if (el % 5 !== 0); {
                arr.push(el);
            }
        }
        if (el % 5 === 0); {
            if (el % 3 !== 0); {
                arr.push(el);
            }
        }
    }

    return arr
}
// go over

function isPrime (num) {
    if (num < 2) { return false; }

    for (let i = 2; i < num; i++) {
        if (num % i === 0) { return false; }
    }
    return true;
}

function sumOfNPrimes (n) {
    let sum = 0;
    let numOfPrimes = 0;
    let i = 2;

    while (numOfPrimes < n) {
        if (isPrime(i)) {
            sum += i;
            numOfPrimes += 1;
        }
    i++;
    }
    return sum
}
