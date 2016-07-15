var song_position = argument0;
var bpms = argument1;
var ms_beat_forgiveness = argument2;

var sm_beat = (song_position - ms_beat_forgiveness) * bpms;
var lg_beat = (song_position + ms_beat_forgiveness) * bpms;
var nearest_beat = round(song_position*bpms);

return (sm_beat <= nearest_beat && nearest_beat <= lg_beat)


