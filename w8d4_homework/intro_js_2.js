function titleize (array, callback){
    let capitalized = array.map(function (name) {
        return `Mx. ${name.toUpperCase} Jingleheimer Schmidt`
        });    
    callback(capitalized);
    

};

function printCallback(array) {
    array.forEach(element => { console.log(element);});
};

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks
};

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRR!!'`)
};

Elephant.prototype.grow() = function () {
    this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
    this.tricks.push(trick);
};

Elephant.prototype.play = function () {
    let randomTrick = Math.floor(Math.random() * this.tricks.length);
    console.log(randomTrick)
};  


Elephant.paradehelper = function(elephant) {
    console.log(`#{this.name} is trotting by!`);
};

function dinerBreakfast () {
    let order = `I'd like cheesy scrambled eggs please.`
    console.log(order)
  
    return function (food) {
        order = `${order.slice(0, order.length-7)} and ${food} please.`;
        console.log(order);
    };
};