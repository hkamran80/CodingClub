var S1 = createSprite(100,100);
S1.setAnimation("S1")
var BK1 = createSprite(100,100);
BK1.setAnimation("BK");
BK1.scale = 10
var score = 0;
var GG = createSprite(200,400);
GG.scale = 3;
GG.setAnimation("Goal");
var RS1 = createSprite(5, 200);
RS1.setAnimation ("RS");
var LS1 = createSprite(395, 200);
LS1.setAnimation ("LS");
var TS1 = createSprite(190,5);
TS1.setAnimation("TS");
var BLS1 = createSprite(55,400);
BLS1.setAnimation("BLS");
var BRS1 = createSprite(358,430);
BRS1.setAnimation("BRS");

//sprite creation

BLS1.rotation = 28;
BLS1.scale = 1.5;
BRS1.rotation = -28;
BRS1.scale = 1.5;
var PA1= createSprite(200,380);
PA1.setAnimation("P1")
var TSR1 = createSprite(395,0);
TSR1.setAnimation("TSR");
TSR1.rotation= 45;
var TSL1 = createSprite (0,0);
TSL1.setAnimation("TSL");
TSL1.rotation= 45;
var POO= createSprite(200,110);
POO.setAnimation("poo");
POO.scale=0.25;

//sprite scale and rotation developer

var ball = createSprite(200, 200);
ball.setAnimation("golfball_1");
ball.scale = 0.06;
var RP = createSprite(295,250);
RP.setAnimation("triangle");
var RP2 = createSprite(100,250);
RP2.setAnimation("triangle2");
ball.x = randomNumber(8, 388);
ball.y = randomNumber(10, 340);
ball.setVelocity(5, 10);

//ball function maker ex.velocity

createEdgeSprites();
function draw() {
  ball.bounceOff(edges);
  ball.bounceOff(RP);
  ball.bounceOff(RP2);
  ball.bounceOff(RS1);
  ball.bounceOff(TS1);
  ball.bounceOff(BLS1);
  ball.bounceOff(BRS1);
  ball.bounceOff(PA1);
  ball.bounceOff(TSR1);
  ball.bounceOff(TSL1);
  ball.bounceOff(POO);
  //ball bounce function
  if(keyDown("right")){
    PA1.x = PA1.x + 3;
  }
  if (score==10){
    ball.setVelocity(7,12)
  }
  if (score==25){
    ball.setVelocity(10,16)
  }
  if (score==35){
    ball.setVelocity(15,20)
  }
  if(keyDown("left")){
    PA1.x = PA1.x - 3;
  }
   if(ball.isTouching(RP)||  ball.isTouching(RP2)){
    score= score + 1;
  }
  if(ball.isTouching(POO)){
    score= score + 2;
  }
  if (ball.isTouching(GG)){
    var GG2Z = createSprite(650,550);
    GG2Z.setAnimation("GG2Z");
  }
  if (score == 50) {
    var GG3 = createSprite(600,500);
    GG3.setAnimation("GG3")
    ball.setVelocity(0,0);
  }
  drawSprites();
  stroke("red");
  text("Score " + score,  50, 50);
}

//Paddle movement and world function creation
