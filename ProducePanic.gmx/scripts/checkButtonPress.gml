var elapsed_time = argument0;
var trapdoorInstance = argument1;

image_index = 1;
var produceId = GetClosestProduce(trapdoorInstance);
if (produceId != noone && 
    point_distance(trapdoorInstance.x, trapdoorInstance.y, produceId.x, produceId.y) < 100)
{
    with (produceId){
        var name = object_get_name(object_index);
        if(name == "obj_badProduce"){
            global.success_count += 1;
            if (global.success_count mod global.multiplier_interval == 0 && global.multiplier <= 9){
                global.multiplier += 1;
            }
            global.badProduceInTrapdoorCount += 1;
        }
        else{
            global.goodProduceInTrapdoorCount += 1;
            ResetMultiplierAndReduceScore();
        }
    }
    with (instance_place(trapdoorInstance.x, trapdoorInstance.y, produceId)){
        instance_destroy();
    }
}
else{
    ResetMultiplierAndReduceScore();
}
