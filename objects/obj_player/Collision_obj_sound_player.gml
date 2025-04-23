// Plays the soundtrack when the player enters the dungeon
if (is_track_playing == false) {
  audio_play_sound(snd_track, 0, true, 0.5)
  is_track_playing = true  
}