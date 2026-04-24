var shellXPos = [];
var shellYPos = [];
var shell = "🐚";
var shellTotal = 100;

var xmarksspotXPos = [];
var xmarksspotYPos = [];
var xmarksspot = "❌";
var xmarksspotTotal = 3;
var xmarksspotFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();


//for Loop
  //for(start; how long;change)
  for (var x=0; x<400;x+=20){
    line(0,x,400,x);
  }
  for(var i = 55; i < 350 ; i+=20 ) {
    text('🐬🥥🦀🌊', 50, i);
  }



//while Loop
var x = 0;
while(x < 400){
  text("🌴", x , 340);
  x += 20;
}

x = 0;
while(x < 400){
  text("☀️", x , 200);
  x += 60;
}
//Array


}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < xmarksspotXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, xmarksspotXPos[i], xmarksspotYPos[i])<15){
      xmarksspotXPos.splice(i, 1);
      xmarksspotYPos.splice(i, 1);
      xmarksspotFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < xmarksspotXPos.length; i ++){
    text(xmarksspot, xmarksspotXPos[i], xmarksspotYPos[i]);
  }

  for(var i = 0; i < shellXPos.length; i ++){
    text(shell, shellXPos[i], shellYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + xmarksspot + "s   |   " + xmarksspot + " " + xmarksspotFound + "/" + xmarksspotTotal, 0, 425);

  if(xmarksspotFound == xmarksspotTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  shellXPos = [];
  shellYPos = [];
  xmarksspottXPos = [];
  xmarksspotYPos = [];
  xmarksspotFound = 0;


  for(var i = 0; i < shellTotal; i++){
    shellXPos.push(random(0,600));
    shellYPos.push(random(0,400));
  }

  for(var i = 0; i < xmarksspotTotal; i++){
   xmarksspotXPos.push(random(0,600));
    xmarksspotYPos.push(random(0,400));
  }
}