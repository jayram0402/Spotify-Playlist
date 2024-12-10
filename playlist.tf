resource "spotify_playlist" "Bollywood" {
  name        = "Bollywood"
  description = "Bollywood music playlist"
  tracks      = ["3hkC9EHFZNQPXrtl8WPHnX"]

}

resource "spotify_playlist" "Aman" {
  name        = "Jayram favorite"
  description = "Bollywood music playlist"
  tracks      = ["3hkC9EHFZNQPXrtl8WPHnX"]

}

data "spotify_search_track" "eminem" {
  artist = "Eminem"

}

resource "spotify_playlist" "InderjeetSir" {
  name        = "Inderjeet Sir favorite"
  description = "Bollywood music playlist"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id]


}

resource "spotify_playlist" "Jayram" {
  name        = "Jayram sharma favorite"
  description = "jayram sharma music playlist"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id]


}