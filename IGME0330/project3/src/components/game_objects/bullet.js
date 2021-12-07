import { playerX } from "../../constants/consts.js";

export default class Bullet {
  constructor(imgEl, ctx, yPos) {
    this.imgEl = imgEl;
    this.yPos = yPos;
    this.xPos = playerX + 5;
    this.update = this.update.bind(this);
    this.ctx = ctx;
    this.width = ctx.canvas.width / 20;
    this.height = this.width;
  }

  update(dt) {
    this.xPos += (dt / 1000) * 30;
  }

  render() {
    this.ctx.drawImage(
      this.imgEl,
      this.xPos,
      this.yPos - this.height / 2,
      this.width,
      this.height
    );
  }
}
