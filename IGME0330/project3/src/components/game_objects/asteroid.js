export default class Asteroid {
  constructor(imgEl, ctx, breaks) {
    this.imgEl = imgEl;
    this.yPos = Math.random() * ctx.canvas.height;
    this.xPos = ctx.canvas.width;
    this.update = this.update.bind(this);
    this.ctx = ctx;
    this.width = ctx.canvas.width / (15 + Math.random() * 10);
    this.height = this.width * (0.5 + Math.random());
    this.speed = 35 + Math.random() * 30;
    this.breaks = breaks;
    this.rotationSpeed = 0.005 * (-1 + 2 * Math.random());
    this.rotation = 0;
  }

  update(dt) {
    this.xPos -= (dt / 1000) * this.speed;
    this.rotation += this.rotationSpeed * dt;
  }

  render() {
    this.ctx.save();
    this.ctx.translate(this.xPos, this.yPos);
    this.ctx.rotate(this.rotation);
    this.ctx.drawImage(
      this.imgEl,
      -this.width / 2,
      -this.height / 2,
      this.width,
      this.height
    );
    this.ctx.restore();
  }
}
