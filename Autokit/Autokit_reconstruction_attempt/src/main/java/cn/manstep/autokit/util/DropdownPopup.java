/**
 * DropdownPopup.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.q
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * A configurable dropdown popup menu built on ListPopupWindow. Supports
 * anchoring to a view, custom width/height, item click handling,
 * dismiss callbacks, and edge fading. Uses a Builder pattern for construction.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.PopupWindow;

public class DropdownPopup /* was: 'util.q' */ {

    /** The ListPopupWindow backing this popup. /* was: 'a' */ */
    private final ListPopupWindow popupWindow /* was: 'a' */;

    /** The anchor view. /* was: 'f1912b' */ */
    private final View anchorView /* was: 'f1912b' */;

    /** The adapter. /* was: 'f1913c' */ */
    private final cn.manstep.phonemirrorBox.d0.g adapter /* was: 'f1913c' */;

    /** The builder configuration. /* was: 'f1914d' */ */
    private final Builder config /* was: 'f1914d' */;

    /** External dismiss listener. /* was: 'e' */ */
    private OnDismissCallback dismissCallback /* was: 'e' */;

    /** Callback for popup show/dismiss state changes. /* was: inner interface 'd' */ */
    public interface OnDismissCallback /* was: 'd' */ {
        void onStateChanged(/* was: 'a' */ boolean isShowing);
    }

    /**
     * Builder for constructing a DropdownPopup.
     * /* was: inner class 'c' */
     */
    public static class Builder /* was: 'c' */ {
        private final Context context /* was: 'a' */;
        final View anchorView /* was: 'f1919b' */;
        final cn.manstep.phonemirrorBox.d0.g adapter /* was: 'f1920c' */;
        OnDismissCallback dismissCallback /* was: 'f1921d' */;
        Drawable background /* was: 'e' */;
        AdapterView.OnItemClickListener itemClickListener /* was: 'f' */;
        int horizontalOffset /* was: 'g' */;
        int height /* was: 'h' */ = 0;
        int width /* was: 'i' */ = 0;
        int topBottomMargin /* was: 'j' */ = 10;
        int fadingEdgeLength /* was: 'k' */ = 50;

        public Builder(View anchor, cn.manstep.phonemirrorBox.d0.g adapter) {
            this.context = anchor.getContext();
            this.anchorView = anchor;
            this.adapter = adapter;
        }

        /** Build the popup. /* was: 'l' */ */
        public DropdownPopup build(/* was: 'l' */) { return new DropdownPopup(this); }

        /** Set background drawable. /* was: 'm' */ */
        public Builder setBackground(/* was: 'm' */ Drawable d) { this.background = d; return this; }

        /** Set popup height. /* was: 'n' */ */
        public Builder setHeight(/* was: 'n' */ int h) { this.height = h; return this; }

        /** Set item click listener. /* was: 'o' */ */
        public Builder setOnItemClickListener(/* was: 'o' */ AdapterView.OnItemClickListener l) {
            this.itemClickListener = l; return this;
        }

        /** Set dismiss callback. /* was: 'p' */ */
        public Builder setDismissCallback(/* was: 'p' */ OnDismissCallback cb) {
            this.dismissCallback = cb; return this;
        }

        /** Set horizontal offset. /* was: 'q' */ */
        public Builder setHorizontalOffset(/* was: 'q' */ int offset) {
            this.horizontalOffset = offset; return this;
        }

        /** Set popup width. /* was: 'r' */ */
        public Builder setWidth(/* was: 'r' */ int w) { this.width = w; return this; }
    }

    public DropdownPopup(Builder builder) {
        ListPopupWindow popup = new ListPopupWindow(builder.context);
        this.popupWindow = popup;
        popup.setAnchorView(builder.anchorView);
        this.popupWindow.setAdapter(builder.adapter);
        this.popupWindow.setModal(true);
        this.config = builder;
        this.anchorView = builder.anchorView;
        this.adapter = builder.adapter;
        int halfWidth = builder.anchorView.getWidth() / 2;
        int doubleHeight = builder.anchorView.getHeight() * 2;
        this.popupWindow.setWidth(builder.width == 0 ? halfWidth : builder.width);
        this.popupWindow.setHeight(builder.height == 0 ? doubleHeight : builder.height);
        this.popupWindow.setHorizontalOffset(builder.horizontalOffset - (halfWidth / 2));
        this.popupWindow.setVerticalOffset((-builder.anchorView.getHeight()) / 4);
        if (builder.background != null) {
            this.popupWindow.setBackgroundDrawable(builder.background);
        }
        this.popupWindow.setOnItemClickListener(new ItemClickWrapper(builder));
        this.popupWindow.setOnDismissListener(new DismissWrapper(builder));
    }

    /** Set external dismiss callback. /* was: 'c' */ */
    public void setDismissCallback(/* was: 'c' */ OnDismissCallback cb) {
        this.dismissCallback = cb;
    }

    /** Show the popup at a position. /* was: 'd' */ */
    public void showAt(/* was: 'd' */ int x, int selectedPosition) {
        this.popupWindow.setHorizontalOffset(x - ((this.anchorView.getWidth() / 2) / 2));
        this.adapter.a(selectedPosition);
        this.popupWindow.show();
        if (this.config.dismissCallback != null) { this.config.dismissCallback.onStateChanged(false); }
        if (this.dismissCallback != null) { this.dismissCallback.onStateChanged(true); }
        ListView listView = this.popupWindow.getListView();
        if (listView != null) {
            ((ViewGroup.MarginLayoutParams) listView.getLayoutParams())
                    .setMargins(0, this.config.topBottomMargin, 0, this.config.topBottomMargin);
            listView.setVerticalFadingEdgeEnabled(true);
            listView.setFadingEdgeLength(this.config.fadingEdgeLength);
            listView.setVerticalScrollBarEnabled(false);
            listView.setSelection(selectedPosition);
            listView.setOverScrollMode(2);
        }
    }

    class ItemClickWrapper implements AdapterView.OnItemClickListener {
        final Builder config;
        ItemClickWrapper(Builder c) { this.config = c; }
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int pos, long id) {
            if (this.config.itemClickListener != null) {
                this.config.itemClickListener.onItemClick(parent, view, pos, id);
            }
            DropdownPopup.this.popupWindow.dismiss();
        }
    }

    class DismissWrapper implements PopupWindow.OnDismissListener {
        final Builder config;
        DismissWrapper(Builder c) { this.config = c; }
        @Override
        public void onDismiss() {
            if (this.config.dismissCallback != null) { this.config.dismissCallback.onStateChanged(false); }
            if (DropdownPopup.this.dismissCallback != null) {
                DropdownPopup.this.dismissCallback.onStateChanged(false);
            }
        }
    }
}
