var elapsed_time = argument0;
var produce = argument1;
var inst = argument2;

if (HitIsOnBeat(elapsed_time, global.track_1_bpms, global.beat_ms_forgiveness)){
    if (instance_exists(produce)){
        if point_distance(inst.x, inst.y, produce.x, produce.y) < 100
        {
            self.sprite_index = spr_trapdoorOpen;
        }
    }
}
