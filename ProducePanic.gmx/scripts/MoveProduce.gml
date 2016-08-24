var inst = argument0;
var producePath = argument1;
var adjustedSpeed = argument2;

if point_distance(inst.x, inst.y, producePath.x, producePath.y) > 5
{
   move_towards_point(producePath.x, producePath.y, adjustedSpeed);
} else {
    if(object_get_name(inst.object_index) == "obj_badProduce"){
        ResetMultiplierAndReduceScore();
    }
    with (inst){
        instance_destroy();
    }
}
