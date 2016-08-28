//Move the pile up and check good vs bad fruit
var goodProduceRatio = global.goodProduceInTruckCount/(global.badProduceInTruckCount + global.goodProduceInTruckCount);
var originalX = obj_producePile.x;
var newY = obj_producePile.y - 2;
var maxPileHeight = 384;
if (newY <= maxPileHeight){
    newY = maxPileHeight;
}

if (goodProduceRatio >= 0.75){
    obj_producePile.sprite_index = spr_goodPile;
}
if (goodProduceRatio >= 0.25 && goodProduceRatio <= 0.75){
    obj_producePile.sprite_index = spr_goodBadPile;
}
if (goodProduceRatio < 0.25){
    obj_producePile.sprite_index = spr_badPile;
}
obj_producePile.x = originalX;
obj_producePile.y = newY;
