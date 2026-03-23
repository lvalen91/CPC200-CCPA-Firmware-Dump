/**
 * LanguageItem.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.m
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Data model for a language selection item. Holds a language code (key),
 * display name (value), and a selected/checked state. Used in the
 * language settings list with LanguageGroup (util.o).
 */
package cn.manstep.autokit.util;

public class LanguageItem /* was: 'util.m' */ {

    /** Language code (e.g., "en", "zh"). /* was: 'a' */ */
    private String code /* was: 'a' */;

    /** Display name (e.g., "English", "中文"). /* was: 'f1902b' */ */
    private String displayName /* was: 'f1902b' */;

    /** Whether this item is currently selected. /* was: 'f1903c' */ */
    private boolean selected /* was: 'f1903c' */ = false;

    public LanguageItem(String code, String displayName) {
        this.code = code;
        this.displayName = displayName;
    }

    /** Get display name. /* was: 'a' */ */
    public String getDisplayName(/* was: 'a' */) {
        return this.displayName;
    }

    /** Get language code. /* was: 'b' */ */
    public String getCode(/* was: 'b' */) {
        return this.code;
    }

    /** Is this item selected? /* was: 'c' */ */
    public boolean isSelected(/* was: 'c' */) {
        return this.selected;
    }

    /** Set selected state. /* was: 'd' */ */
    public void setSelected(/* was: 'd' */ boolean selected) {
        this.selected = selected;
    }
}
