var destinationTrapdoor = argument0;
var produceType = argument1;

var rightTrapdoorX = 544;
var upTrapdoorX = 480;
var downTrapdoorX = 416;
var leftTrapdoorX = 352;

if (destinationTrapdoor == up){
    var inst = instance_create(upTrapdoorX, 0, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorUp;
    }
}
else if (destinationTrapdoor == down){
    var inst = instance_create(downTrapdoorX, 0, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorDown;
    }
}
else if (destinationTrapdoor == left){
    var inst = instance_create(leftTrapdoorX, 0, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorLeft;
    }
}
else{
    var inst = instance_create(rightTrapdoorX, 0, produceType);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorRight;
    }
}
