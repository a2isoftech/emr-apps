## 3.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.7.2

- Bug fix: Use the ticket folder for loadout images so they show in the ticket instantly.

## 2.7.1

- Build failure issue resolved.

## 2.7.0
  
- Changes made to add more images for loadouts.
- Multiple seal numbers can be added along with images.
- Prefill the container number if the ticket already has one.
- Added PrimaryManager to ticket cards.
- Allow gallery uploads for loadouts.

## 2.6.0

- Updated flutter to 3.38.3 including required package changes

## 2.5.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 2.4.0

- Icons and localisations to support the new menu structure.

## 2.3.0
- Added map for widget builders in route registry

## 2.2.0
- Groundwork for new menu structure.

## 2.1.0
- Bug fix for local media store.
- Prevent duplicate comment in discrepant details screen.

## 2.0.0
- Re-skin of Ticket Inspection, Locations and Loadouts.
- Code refactoring and media upload handling.
- Ticket media gallery re-designed.
- Discrepant details screen re-designed.
- Changes in loadout details to use `pageview` for different steps.
- Moved graphql schema and files to `emr_core_api`.

## 1.11.0
- Updated to Flutter 3.32.5

## 1.10.2
- Ticked Sorting Type new Schemas.

## 1.10.1
- Fixed the tickets search sorting fetch issue.

## 1.10.0
- Replaced AiHelper with EmrLogger

## 1.9.2
- Ensured all remote media calls contain X-Yard-Code
- Fixed bug with discrepant images

## 1.9.1
- Increased number of loadouts to retrieve

## 1.9.0
- Removed ability for non-ticket loadouts & added yard code to network images to enable edge media api

## 1.8.0
- Ensured media helper can handle any url format

## 1.7.0
- Ensured all images are using relative URL

## 1.6.0
- Updated video_player dependency from `^2.9.2` to `^2.9.5`.

## 1.5.0
- Tickets now only show active ticket lines
- Fixed styling on discrepancy button on image preview.
- Fixed bugs in discrepancies

## 1.4.0
- Added edge API URLs & config toggle.
- Improved location search to match functionality of ticket search
- Renamed yard app user-facing text to site ops
- Filtered out older completed load outs
- Updated `emr_one_core` reference to 4.51.0

## 1.3.0
- Fixes for tickets search screen.
- Details screen can now pull to refresh

## 1.2.0
- Removed workmanager package

## 1.1.0
- Improved UI of image viewer
- Fixed bugs in discrepancies relating to media update & removal
- Fixed bug with media not being compressed
- Added instant search to ticket search
- Implemented new background worker
- Updated to `emr_one_core` 4.46.0

## 1.0.1
- Fixed bug in Ticket Screen 7 day tab - Grey UI issue at end of list.
- Improved UI legibility in ticket search
- Improved wildcard search on ticket search & Add character limit to search input
- Fixed Load Out pre container questions - 'Other' not saving
- Added input length limit.
- Fixed Length validation on Seal Number.

## 1.0.0
- Fixed error message in camera screen animation when taking picture.
- Fixed UI errors following rebrand
- Updated Load Out UI to use headers and bottom bar for navigation
- Fixed bug in tickets / inspection camera by moving compression to controller upload method 

## 0.7.0 
- Added location photo functionality 
- Updated `emr_one_core` to 4.39.0

## 0.6.0
- Added Load Out functionality

## 0.5.0
- Custom scrolling in the media list to keep headers fixed while scrolling.
- Option to select multiple media items and delete them.
- Show an icon on media if captured for discrepancy.
- UI enhancements.

## 0.4.0
- Updated emr_one_core to 4.34.0.
- Added option to delete media.
- Implemented image and video compression before upload.
- Enabled image editing before upload.
- Introduced feature to add discrepancy details and upload images for discrepancies.
- Added ability to comment on media.
- Code refactoring and localization.

## 0.3.0
- Updated `emr_one_core` to 4.32.0
- Added route to EmrImageEditor widget with parameters

## 0.1.0
 - Ticket list screen with sorting and global search.
 - Ticket details screen with all captured media.
 - Capture video and Image and background uploader.
 - View video and Image in full screen.

## 0.0.1
 - Created emr_one_yard_app module to contain the updated Yard App project. 
 - Added basic routing to show Yard App section. 