/* IDENTIFIED - BroadcastReceiver for head unit hardware key codes
 * Original: n.java
 * Listens for 30+ intent actions from various car head unit vendors:
 * NWD, Microntek, Winca, C3, QQ Music, Kuwo Music, Eryanet, BZ
 * Also volume/mute changes, media buttons, voice assist, call buttons
 * Inner interface c: w(int keyCode, boolean isLongPress)
 * Contains ZlinkReceiver (u0.d) instance
 * SUGGESTED PACKAGE: cn.manstep.autokit.receiver
 */
package cn.manstep.autokit.service;
