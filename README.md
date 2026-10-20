# Powder Hollow

A cozy snowboarding game that runs in the browser. Carve, jump, spin, grab and flip down the mountain, collect snowflakes, earn coins, and spend them in the shop on new places, riders, outfits, boards, trails and music.

**Play:** https://vibe331212.github.io/powder-hollow/

## Modes
- **Free Ride:** no score, just ride to the finish.
- **Trick Challenge:** 15 runs with goals and stars. Play alone, or tap Challenge friends to get a code; the first rider to finish all 3 goals wins.
- **Race Friends:** create a race to get a 4-letter code, send it to friends, and race each other live on the same course.

## Village mode
Tap **Village** on the main menu to walk around town. Walk into the General Store, take tickets from the shelves and pay at the checkout. The Lodge sells snowboards and helmets, and your Home has a bed and a wardrobe. A roundabout with a fountain sits in the middle, animals wander around, and six more houses are for sale. The ski lift takes you to Free Ride, Trick Challenge or Race Friends. Tap **Classic menu** to go back.

## Accounts
Tap **Sign in** on the main menu to create an account with email and password. Coins, gear, places and stars are saved to the account, so progress follows you to any device. The table setup is in `supabase.sql`; each player can only read and change their own save.

## Controls
- Left / Right: carve, and spin in the air
- Space: jump, and press again in the air to flip
- Up / Down in the air: front flip or backflip (on phones, use the Flip and Back buttons)
- Command + B (Ctrl + B on Windows): hold in the air to grab
- P: pause
- V: switch between top view and the behind-the-rider view (also on the main menu and pause menu)

Race mode uses Supabase Realtime channels. The key in `index.html` is Supabase's public (anon) key, which is meant to be used in web pages.
