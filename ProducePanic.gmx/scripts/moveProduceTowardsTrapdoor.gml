var inst = argument0;
var producePath = argument1;

if point_distance(inst.x, inst.y, producePath.x, producePath.y) > 5
{
   move_towards_point(producePath.x, producePath.y, 5);
} else {
    with (inst){
        instance_destroy();
    }
}
