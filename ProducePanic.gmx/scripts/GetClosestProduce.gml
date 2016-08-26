var trapdoorInstance = argument0

var goodProduce = instance_nearest(trapdoorInstance.x, trapdoorInstance.y, obj_goodProduce);
var badProduce =  instance_nearest(trapdoorInstance.x, trapdoorInstance.y, obj_badProduce);
if (goodProduce == noone and badProduce == noone) return noone;
if (goodProduce == noone) return badProduce;
if (badProduce == noone) return goodProduce;

var distanceToGoodProduce = point_distance(trapdoorInstance.x, trapdoorInstance.y, goodProduce.x, goodProduce.y)
var distanceToBadProduce = point_distance(trapdoorInstance.x, trapdoorInstance.y, badProduce.x, badProduce.y);

if (min(distanceToGoodProduce, distanceToBadProduce) == distanceToGoodProduce){
    return goodProduce;
}
else{
    return badProduce;
}
