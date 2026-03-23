package cn.manstep.autokit.ui.fragment;

/**
 * FirstPage.java - Main home page fragment displayed when no device is connected.
 *
 * <p>This fragment serves as the landing page of the AutoKit application. It uses
 * ViewModels (via AndroidX Lifecycle) to observe connection state, media playback
 * state, and device information. It registers with the ViewManager as a message
 * listener to receive box state changes and media info updates.</p>
 *
 * <h3>ViewModels used:</h3>
 * <pre>
 *   a0 -> homeViewModel (x0.g) - manages connection state, media playing, etc.
 *   b0 -> mediaInfoViewModel (x0.d) - manages media info (title, artist, cover art)
 * </pre>
 *
 * <h3>Message handling (onListenMsg):</h3>
 * <pre>
 *   type=1 (PAGE_CHANGE):
 *     wParam=5 -> Show CarPlay, set page state to 3
 *     wParam=4 -> AndroidAuto page, set page state to 4
 *     other    -> hide connection indicator
 *
 *   type=4 (BOX_EVENT):
 *     wParam=53 -> Update phone battery level
 *     wParam=52/8 -> Reset state (phone unplugged/disconnected)
 *     wParam=1  -> Phone plugged in, set page state to 2
 *     wParam=15 -> Box ready
 *     wParam=24/25 -> Bluetooth connected/disconnected
 *     wParam=26/27 -> WiFi connected/disconnected
 *     wParam=29/30 -> SIM card state
 *     wParam=50/51 -> USB mode change (1=USB, 2=wireless)
 *     wParam=70 -> Signal strength update
 *     wParam=56 -> Media info update trigger
 *     wParam=60 -> Media title (via onListenMsgStr)
 *     wParam=61 -> Media artist (via onListenMsgStr)
 *     wParam=62 -> Cover art data (via onListenMsgBundle)
 *     wParam=63 -> Media album (via onListenMsgStr)
 * </pre>
 *
 * <p>Implements: ViewManager.d (v0.e.d) - message listener interface</p>
 * <p>Original: cn.manstep.phonemirrorBox.FirstPage</p>
 */
public class FirstPage extends androidx.fragment.app.Fragment
    /* implements ViewManager.MessageListener */ {
    // private HomeViewModel homeViewModel;       // was a0
    // private MediaInfoViewModel mediaInfoModel; // was b0
    // L0() = onCreateView - inflates layout, sets up ViewModels
    // M0() = onDestroy - unregisters from ViewManager
    // g(int,int,int) = onListenMsg - handles numeric messages
    // s(int,int,Bundle) = onListenMsgBundle - handles bundle messages (cover art)
    // x(int,int,String) = onListenMsgStr - handles string messages (title/artist/album)
}
