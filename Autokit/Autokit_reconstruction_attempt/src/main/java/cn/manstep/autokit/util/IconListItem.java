/**
 * IconListItem.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.c
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Data model for a list item with a name (title) and a Bitmap icon.
 * Used with IconListAdapter (util.d) for populating image+text list views.
 */
package cn.manstep.autokit.util;

import android.graphics.Bitmap;
import com.yalantis.ucrop.BuildConfig;

public class IconListItem /* was: 'util.c' */ {

    /** Display name / title. /* was: 'a' */ */
    private String name /* was: 'a' */;

    /** Icon bitmap. /* was: 'f1855b' */ */
    private Bitmap icon /* was: 'f1855b' */;

    public IconListItem() {
        this.name = BuildConfig.FLAVOR;
        this.icon = null;
    }

    /**
     * Get the icon bitmap.
     * /* was: 'a' */
     */
    public Bitmap getIcon(/* was: 'a' */) {
        return this.icon;
    }

    /**
     * Get the display name.
     * /* was: 'b' */
     */
    public String getName(/* was: 'b' */) {
        return this.name;
    }

    public IconListItem(String name, String unused, Bitmap icon) {
        this.name = BuildConfig.FLAVOR;
        this.icon = null;
        this.name = name;
        this.icon = icon;
    }
}
