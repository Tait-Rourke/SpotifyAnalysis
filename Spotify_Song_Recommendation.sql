Select *
From [Spotify Data 2]
Where danceability > 0.90
and popularity < 25
and track_genre != 'kids'
and track_genre != 'children'
Order By 7 desc
-- This initial querey allows us to find the best dance songs that aren't popular for our party
-- without including kids music


SELECT Top 10 track_genre, count(track_genre) as genreCount
FROM [Spotify Data 2]
Where danceability > 0.90
and popularity < 25
and track_genre != 'kids'
and track_genre != 'children'
Group By track_genre
Order By genreCount desc
-- Here we are able to find what genres are most popular in the previously found 
-- songs, allowing for us to then search for more music in genre based queries


SELECT * 
FROM [Spotify Data 2]
WHERE track_genre = 'chicago-house'
and popularity > 75
-- Upon diving further into chicago-house music (found to be the most common in my initial genre query)
-- I was surprised to see only 2 songs with popularity ratings over 75, which was actually just two remixes of the same song


SELECT Top 10 track_genre, count(track_genre) as genreCount
FROM [Spotify Data 2]
WHERE popularity > 75
Group By track_genre
Order By genreCount desc
-- Based on my surprising findings previously, I decided to see the top 10 genres in the top quartile of popular music and found that
-- none of the genres in my original top 10 search were present, yet, dance and house music (whcih are similar to my initial genres)
-- are the second and eighth most popular of all music


SELECT track_genre, AVG(danceability) as Avg_dance
FROM [Spotify Data 2]
Where track_genre = 'house'
or track_genre = 'chicago-house'
Group by track_genre
Order by Avg_dance desc
-- Collects the average danceability for house and chicago-house music


SELECT track_genre, AVG(energy) as Avg_energy
FROM [Spotify Data 2]
Where track_genre = 'house'
or track_genre = 'chicago-house'
Group by track_genre
Order by Avg_energy desc
-- Collects the average energy for house and chicago-house music


SELECT track_genre, AVG(tempo) as Avg_tempo
FROM [Spotify Data 2]
Where track_genre = 'house'
or track_genre = 'chicago-house'
Group by track_genre
Order by Avg_tempo desc
-- Collects the average tempo for house and chicago-house music

-- I lastly wanted to compare the main factors of these genres through their average danceability, energy, and tempo 
-- I was able to identify that both genres are extremely similar and most likely would be great potential recommendations to those who listen to one but not the other

-- Because of this finding, not only can I find more music for myself, but we can also identify that the less popular songs/genres may be 
-- fair reccomendations to a large amount of people as house and dance are far more popular with similar sounds to those such as Chicago House and club.
-- This can assist in DJ/Artist exposure as those who make similar music to more mainstream DJs/Artists but are currently less popular, 
-- should still be recommended to the same group of listeners as we find the genres to be related yet, so different in monthly listeners.  