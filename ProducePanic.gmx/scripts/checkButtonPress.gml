var elapsed_time = argument0;
var produce = argument1;
var inst = argument2;

self.sprite_index = spr_trapdoorOpen;

if (HitIsOnBeat(elapsed_time, global.track_1_bpms*2, global.beat_ms_forgiveness)){
    if (instance_exists(produce)){
        if (point_distance(inst.x, inst.y, produce.x, produce.y) < 100)
        {
            if (global.success_count != 0 && (global.success_count mod global.multiplier_interval) == 0){
                global.multiplier += 1;
                RedrawMultiplier();
            }
            score += 10*(global.multiplier);
        }
        else{
            global.multiplier = 1;
            RedrawMultiplier();
            global.success = 0;
        }
    }
}
