allowed_fail_time = 5000;
if (argument_count == 1){
    elapsed_time = argument[0];
} else {
    elapsed_time = allowed_fail_time;
}

var newScore = score - global.perProduceValue*(global.multiplier);
if (elapsed_time <= allowed_fail_time){
    newScore = 0
}
if (newScore <= 0){
    if (elapsed_time > allowed_fail_time){
        room_goto(rm_failScreen);
    }
}
score -= newScore;
global.multiplier = 1;
global.success = 0;
