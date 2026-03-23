/**
 * LanguageGroup.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.o
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Data model for a group of language items in the language settings UI.
 * Contains a group title, a list of LanguageItem entries, and a
 * collapsed/expanded state for an expandable list view.
 */
package cn.manstep.autokit.util;

import java.util.List;

public class LanguageGroup /* was: 'util.o' */ {

    /** Group title (e.g., "Asia", "Europe"). /* was: 'a' */ */
    private String title /* was: 'a' */;

    /** Whether this group is collapsed. /* was: 'f1904b' */ */
    private boolean collapsed /* was: 'f1904b' */ = false;

    /** List of language items in this group. /* was: 'f1905c' */ */
    private List<LanguageItem> items /* was: 'f1905c' */;

    public LanguageGroup(String title, List<LanguageItem> items) {
        this.title = title;
        this.items = items;
    }

    /** Get the language items. /* was: 'a' */ */
    public List<LanguageItem> getItems(/* was: 'a' */) {
        return this.items;
    }

    /** Get the group title. /* was: 'b' */ */
    public String getTitle(/* was: 'b' */) {
        return this.title;
    }

    /** Is this group collapsed? /* was: 'c' */ */
    public boolean isCollapsed(/* was: 'c' */) {
        return this.collapsed;
    }

    /** Set collapsed state. /* was: 'd' */ */
    public void setCollapsed(/* was: 'd' */ boolean collapsed) {
        this.collapsed = collapsed;
    }
}
