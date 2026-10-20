# Powder Hollow

A cozy snowboarding game that runs in the browser. Carve, jump, spin, grab and flip down the mountain, collect snowflakes, earn coins, and spend them in the shop on new places, riders, outfits, boards, trails and music.

**Play:** https://vibe331212.github.io/powder-hollow/

## Modes
- **Free Ride:** no score, just ride to the finish.
- **Trick Challenge:** five runs with goals and stars. Play alone, or tap Challenge friends to get a code; the first rider to finish all 3 goals wins.
- **Race Friends:** create a race to get a 4-letter code, send it to friends, and race each other live on the same course.

## Controls
- Left / Right: carve, and spin in the air
- Space: jump, and press again in the air to flip
- Up / Down off a ramp: front flip or backflip
- X: hold in the air to grab
- P: pause

Race mode uses Supabase Realtime channels. The key in `index.html` is Supabase's public (anon) key, which is meant to be used in web pages.
