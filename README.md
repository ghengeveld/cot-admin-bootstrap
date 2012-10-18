# Bootstrap

Admin theme for Cotonti based on Twitter Bootstrap.

## Installation

- Upload the bootstrap theme to /themes/admin
- Upload the admintheme plugin to /plugins
- Download datas/config.php from the server
- Modify datas/config.php, set $cfg['admintheme'] = 'bootstrap';
- Save and upload datas/config.php
- Go to admin.php on your site => Extensions
- Install the Admin Theme plugin to use matching templates for the users module

## Fixed navigation bar

Since v1.0, the theme has a static nav bar, which will scroll out of view. 
If you want a navbar that is fixed to the top of the page, even when you scroll, follow these steps:

Yes, this is a two step process:

- In header.tpl, replace `navbar-static-top` with `navbar-fixed-top`
- In admin.css, set `#adminmain` `margin-top` to `65px`

Unfortunately the downside of this is that if you have a heading with an in-page anchor 
and you jump to that in-page anchor, the heading will end up underneath the navbar. 
Basically it jumps too far.

## Notes

This theme requires Cotonti Siena 0.9.10 or above.