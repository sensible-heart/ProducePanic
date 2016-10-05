var newScore = score - global.perProduceValue*(global.multiplier);
if (newScore <= 0){
    //room_goto(rm_failScreen);
}
score -= global.perProduceValue*(global.multiplier);
global.multiplier = 1;
global.success = 0;
