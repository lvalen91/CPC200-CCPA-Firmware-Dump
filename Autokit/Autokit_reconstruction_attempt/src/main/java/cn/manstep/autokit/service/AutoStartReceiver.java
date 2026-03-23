package cn.manstep.autokit.service;

/**
 * AutoStartReceiver.java - BOOT_COMPLETED broadcast receiver (priority 1000).
 *
 * <p>Registered with high priority (1000) in AndroidManifest to receive
 * ACTION_BOOT_COMPLETED as early as possible. On boot, it:</p>
 *
 * <ol>
 *   <li>Starts AutoStartService (foreground on API 26+)</li>
 *   <li>If "BootAutoStart" preference is true: launches MainActivity directly</li>
 *   <li>If "BootAutoStart" is false but platform requires it: launches Main1Activity</li>
 *   <li>On API 26+: restores audio stream volumes from saved preferences
 *       (STREAM_MUSIC, STREAM_RING, STREAM_VOICE_CALL)</li>
 * </ol>
 *
 * <h3>Volume restoration:</h3>
 * <p>Checks notification policy access (API 24+) before setting stream volumes
 * to prevent SecurityException on devices with DND restrictions.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.AutoStartReceiver</p>
 */
public class AutoStartReceiver extends android.content.BroadcastReceiver {
    // onReceive -> handles BOOT_COMPLETED
    // a(Context) -> startAutoStartService()
}
