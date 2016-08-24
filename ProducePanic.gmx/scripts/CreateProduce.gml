var destinationTrapdoor = argument0;
var produceType = argument1;

var rightTrapdoorX = 1024;
var rightTrapdoorY = 256;
var upTrapdoorX = 672;
var upTrapdoorY = -32;
var downTrapdoorX = 256;
var downTrapdoorY = -32;
var leftTrapdoorX = -32;
var leftTrapdoorY = 225;

if (destinationTrapdoor == up){
    var inst = instance_create(upTrapdoorX, upTrapdoorY, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorUp;
    }
}
else if (destinationTrapdoor == down){
    var inst = instance_create(downTrapdoorX, downTrapdoorY, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorDown;
    }
}
else if (destinationTrapdoor == left){
    var inst = instance_create(leftTrapdoorX, leftTrapdoorY, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorLeft;
    }
}
else{
    var inst = instance_create(rightTrapdoorX, rightTrapdoorY, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorRight;
    }
}
