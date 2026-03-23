package cn.manstep.autokit.ui.floatwindow;

/**
 * FloatWindowManager.java - Singleton manager for the floating quick access ball.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as floatwindow.e, this singleton manages the lifecycle
 * of both the small floating ball (FloatWindowSmallView) and the expanded
 * control panel (FloatWindowBigView). Handles creation, removal, positioning,
 * and switching between small/big states.</p>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   g()  -> getInstance() - singleton accessor
 *   a(ctx) -> createBigWindow() - creates expanded control panel
 *   b(ctx) -> createSmallWindow() - creates small ball (default mode)
 *   c(ctx, minimize) -> createSmallWindow(minimize) - with minimize flag
 *   d()  -> getActivity() - returns weak-referenced activity
 *   e()  -> getActivityContentRect() - gets visible content bounds
 *   f()  -> getBigView() - returns FloatWindowBigView
 *   i()  -> isAnyWindowShowing()
 *   j(ctx) -> removeAllWindows()
 *   k(ctx) -> destroyAllWindows() - also clears params
 *   l(ctx) -> removeBigWindow()
 *   m(ctx) -> removeSmallWindow()
 *   n()  -> refreshSmallWindowPosition()
 *   o(ctx) -> rebuildIfNotMinimized()
 *   p(ctx, isRight) -> updatePositionOnLayoutChange()
 *   q(activity) -> setActivity()
 *   r(boolean) -> setHomeEnabled()
 *   s(ctx) -> switchToBigWindow() - removes small, creates big
 *   t(ctx) -> showSmallWindow() - creates if not showing
 *   u(ctx) -> switchToSmallWindow() - removes big, creates small
 *   v()  -> saveSmallWindowPosition()
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.floatwindow.e</p>
 */
public class FloatWindowManager {
    private static volatile FloatWindowManager instance;
    // private FloatWindowSmallView smallView;   // was f1645d (f)
    // private FloatWindowBigView bigView;       // was e (c)
    // boolean isSmallWindowShowing;             // was f1644c
    // boolean isBigWindowShowing;               // was f1643b

    public static FloatWindowManager getInstance() {
        // Double-checked locking singleton
        return instance;
    }
}
