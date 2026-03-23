/* IDENTIFIED - Audio focus manager for voice assistant audio
 * Original: f0/g
 * Extends: f0.a (AudioFocusManagerBase)
 * Singleton, TAG "VoiceManager"
 * Manages AUDIOFOCUS_GAIN_TRANSIENT for voice assistant
 * Falls back to NavManager when useNavForVoice flag is set
 * Reads/writes VAAudioType, VAAudioVol preferences
 * SUGGESTED PACKAGE: cn.manstep.autokit.audio
 */
package cn.manstep.autokit.audio.focus;
