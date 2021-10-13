var present = createSprite(200, 270, 30, 30);
present.setAnimation("present");
var surprise1 = createSprite(100, 200, 75, 75);
surprise1.setAnimation("bike");
surprise1.visible = false;
var surprise2 = createSprite(300, 200, 75, 75);
surprise2.setAnimation("puppy");
surprise2.visible = false;
var shake_count = 0;
function draw() {
  background("green");
  if (mouseDidMove()) {
    present.rotation = randomNumber(-10, 10);
    shake_count = shake_count + 1;
  }
  if (shake_count > 100){
    present.visible = false;
    surprise1.visible = true;
    surprise2.visible = true;
  }
  // Make the surprises do cool stuff
  surprise1.rotation = surprise1.rotation + 1;
  surprise2.x = 275 + randomNumber(0,50);
  surprise2.y = 175 + randomNumber(0, 50);
  fill('black');
  textSize(20);
  text("Move the mouse to get your present", 25, 360);
  drawSprites();
}
