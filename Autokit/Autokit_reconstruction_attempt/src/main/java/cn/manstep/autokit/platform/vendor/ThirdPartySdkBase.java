/* IDENTIFIED - Abstract base class for third-party head unit SDK integration
 * Original: u0/a
 * Fields: song info (name, artist, album, lyrics, appName, pkgName),
 * media control (duration, playTime, playStatus), navigation data,
 * call data, album cover bytes
 * Methods match dashboard data: G() setMedia, C() setNavDest, D() setNavTurn,
 * E() setNavStatus, B() setCall, F() setAlbumCover
 * Also: a() onCallStart, b() onCallEnd, c/d/e() audio focus changes
 * SUGGESTED PACKAGE: cn.manstep.autokit.third — abstract base for third-party integrations
 */
package cn.manstep.autokit.platform.vendor;
