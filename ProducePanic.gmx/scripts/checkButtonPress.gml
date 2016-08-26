var elapsed_time = argument0;
var trapdoorInstance = argument1;

self.sprite_index = spr_trapdoorOpen;
var produce = GetClosestProduce(trapdoorInstance);
if (produce != noone && 
    point_distance(trapdoorInstance.x, trapdoorInstance.y, produce.x, produce.y) < 100)
{
    if(object_get_name(produce) == obj_goodProduce){
        global.success_count += 1;
        if (global.success_count mod global.multiplier_interval == 0){
            global.multiplier += 1;
        }
        score += 10*(global.multiplier);
        global.goodProduceInTrapdoorCount += 1;
    }
    else{
        global.badProduceInTrapdoorCount += 1;
    }
    with (instance_place(trapdoorInstance.x, trapdoorInstance.y, produce)){
        instance_destroy();
    }
}
else{
    ResetMultiplierAndReduceScore();
}
