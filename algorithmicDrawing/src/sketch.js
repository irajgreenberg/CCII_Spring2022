let s;

function setup() {
    createCanvas(720, 400);
    // instead of size()
    //ptCount, col, strokeWt
    s = new Spine(createVector(100, 100), 6, color(255, 127, 56), 2);
}

// runs approx 60x per sec
function draw() {
    background(200, 200, 240);
    fill(0, 100, 0);
    stroke(255);
    s.move();
    s.draw();

}