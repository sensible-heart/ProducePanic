var newScore = score - 10*(global.multiplier);
if (newScore <= 0){
    room_goto(rm_failScreen);
}
score -= 10*(global.multiplier);
global.multiplier = 1;
global.success = 0;
