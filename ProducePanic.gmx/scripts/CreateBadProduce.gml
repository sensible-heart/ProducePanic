var destinationTrapdoor = argument0

var rightTrapdoorX = 544
var upTrapdoorX = 480;
var downTrapdoorX = 416;
var leftTrapdoorX = 352;

if (destinationTrapdoor == up){
    var inst = instance_create(upTrapdoorX, 0, obj_badProduce);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorUp;
    }
}
else if (destinationTrapdoor == down){
    var inst = instance_create(downTrapdoorX, 0, obj_badProduce);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorDown;
    }
}
else if (destinationTrapdoor == left){
    var inst = instance_create(leftTrapdoorX, 0, obj_badProduce);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorLeft;
    }
}
else{
    var inst = instance_create(rightTrapdoorX, 0, obj_badProduce);
    with(inst){
        inst.destinationTrapdoor = obj_trapdoorRight;
    }
}
