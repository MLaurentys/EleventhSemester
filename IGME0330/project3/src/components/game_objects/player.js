const DESTINATION = Object.seal({
  TOP: 0,
  MIDDLE: 1,
  BOTTOM: 2,
});

import { playerX } from "../../constants/consts.js";

export default class Player {
  constructor(imgEl, ctx) {
    this.update = this.update.bind(this);
    this.ctx = ctx;
    this.stanceYPos = {
      [DESTINATION.TOP]: ctx.canvas.height / 6,
      [DESTINATION.MIDDLE]: ctx.canvas.height / 2,
      [DESTINATION.BOTTOM]: (5 * ctx.canvas.height) / 6,
    };
    this.previousStance = DESTINATION.MIDDLE;
    this.nextStance = DESTINATION.MIDDLE;
    this.yPos = this.stanceYPos[DESTINATION.MIDDLE];
    this.speed =
      this.stanceYPos[DESTINATION.MIDDLE] -
      this.stanceYPos[DESTINATION.TOP] / 2500; // finished movement in less than 0.5s - when another command can be received
    this.imgEl = imgEl;
    this.width = ctx.canvas.width / 10;
    this.height = this.width;
    this.moveUp = this.moveUp.bind(this);
    this.moveDown = this.moveDown.bind(this);
  }

  moveUp() {
    if (this.previousStance === DESTINATION.MIDDLE)
      this.nextStance = DESTINATION.TOP;
    else if (this.previousStance === DESTINATION.BOTTOM)
      this.nextStance = DESTINATION.MIDDLE;
    console.log(this.nextStance);
  }

  moveDown() {
    if (this.previousStance === DESTINATION.MIDDLE)
      this.nextStance = DESTINATION.BOTTOM;
    else if (this.previousStance === DESTINATION.TOP)
      this.nextStance = DESTINATION.MIDDLE;
  }

  update(dt) {
    this.yPos +=
      ((this.stanceYPos[this.nextStance] -
        this.stanceYPos[this.previousStance]) *
        dt) /
      1300;
    if (Math.abs(this.stanceYPos[this.nextStance] - this.yPos) < 5)
      this.previousStance = this.nextStance;
  }

  render() {
    this.ctx.drawImage(
      this.imgEl,
      playerX,
      this.yPos - this.width / 2,
      this.width,
      this.height
    );
  }
}
