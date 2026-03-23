package cn.manstep.autokit.ui.fragment;

/**
 * AutoBoxMirrorFragment.java - Fragment for AutoBox (CarPlay/AndroidAuto) mirror display.
 *
 * <p>Manages the AutoBoxMirrorTextureView within a FrameLayout container.
 * Observes ViewModel LiveData to handle OpenGL render mode switching and
 * video decoder refresh events. When the OpenGL mode changes, the texture view
 * is removed and re-added to force a surface recreation.</p>
 *
 * <h3>ViewModel observers:</h3>
 * <pre>
 *   useOpenGl (Boolean) -> When changed, calls setUseGlRender() on texture view,
 *                          removes and re-adds it at index 2 in the FrameLayout
 *   refreshDecoder (Boolean) -> When triggered, calls BoxInterface.d.l.z.l()
 *                               to refresh the video decoder
 * </pre>
 *
 * <h3>MediaInfoViewModel callback (InterfaceC0103d):</h3>
 * <pre>
 *   m(int pageState) -> When pageState==2 (connected) and useTextureView is true,
 *                        refreshes the texture view by remove+re-add
 *   k() -> no-op
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.AutoBoxMirrorFragment</p>
 */
public class AutoBoxMirrorFragment extends androidx.fragment.app.Fragment {
    // private AutoBoxMirrorTextureView textureView; // was a0
    // private FrameLayout container;                // was b0
    // private MediaInfoViewModel mediaInfoModel;    // was c0
}
