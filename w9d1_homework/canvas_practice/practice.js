document.addEventListener("DOMContentLoaded", function(){
    const myCanvas = document.getElementById("mycanvas");
    const ctx = myCanvas.getContext("2d");

    // ctx.fillStyle = "gray";
    // ctx.fillRect(0, 0, 100, 100)

    ctx.beginPath();
    ctx.arc(100, 100, 50, 0, 7);
    ctx.strokeStyle = "red";
    ctx.lineWidth = 30;
    ctx.stroke();
    ctx.fillStyle = "blue";
    ctx.fill();


});
