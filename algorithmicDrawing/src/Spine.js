

class Spine {

    // in JS we don't declare properties
    // up here. They are dyanmically generated
    // in the constructor

    constructor(pos, ptCount, col, strokeWt) {
        this.pos = pos;
        this.ptCount = ptCount;
        this.col = col;
        this.strokeWt = strokeWt;

        this.pts = [];
        this.create();

        this.spd = createVector(.2, 1.2);
    }

    create() {
        for (let i = 0; i < this.ptCount; i++) {
            this.pts[i] = createVector(100, 30 * i);
            // alt approach
            // this.pts.push(createVector(100, -200 + 30 * i));
        }

        //console.log(this.pts);
    }

    move() {
        this.pos.add(this.spd);
    }

    draw() {
        push();
        translate(this.pos.x, this.pos.y);
        strokeWeight(this.strokeWt);
        noFill();
        stroke(this.col);
        beginShape();
        for (let i = 0; i < this.pts.length; i++) {
            vertex(this.pts[i].x, this.pts[i].y);
        }
        endShape();
        pop();

    }

}