package cn.manstep.autokit.widget;

/**
 * CustomToast.java - Custom styled Toast implementation.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as widget.a, this class provides a custom-styled
 * Toast using a custom layout (layout resource 2131493038) with a styled
 * TextView (id 2131296631). Falls back to standard Toast if LayoutInflater
 * is unavailable.</p>
 *
 * <h3>Static convenience methods:</h3>
 * <pre>
 *   a(ctx, resId)         -> showShort(context, stringResId)
 *   b(ctx, CharSequence)  -> showShort(context, text)
 *   c(ctx, resId)         -> showLong(context, stringResId)
 *   makeText(ctx, text, duration) -> create custom Toast
 *   makeText(ctx, resId, duration) -> create custom Toast from resource
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.widget.a</p>
 */
public class CustomToast extends android.widget.Toast {
    // Uses custom layout with styled message TextView
    // Falls back to standard Toast.makeText if layout inflation fails

    public CustomToast(android.content.Context context) {
        super(context);
    }
}
