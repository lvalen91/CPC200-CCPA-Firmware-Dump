/**
 * IconListAdapter.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.d
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * BaseAdapter for displaying a list of IconListItem objects (name + bitmap)
 * in a ListView. Uses the ViewHolder pattern for recycling views.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.LinkedList;

public class IconListAdapter /* was: 'util.d' */ extends BaseAdapter {

    /** The data source. /* was: 'f1856b' */ */
    private LinkedList<IconListItem> items /* was: 'f1856b' */;

    /** Weak reference to context. /* was: 'f1857c' */ */
    private WeakReference<Context> contextRef /* was: 'f1857c' */;

    /** ViewHolder for list item views. /* was: inner class 'b' */ */
    private static class ViewHolder /* was: 'b' */ {
        TextView titleView /* was: 'a' */;
        ImageView iconView /* was: 'f1858b' */;

        private ViewHolder() {
        }
    }

    public IconListAdapter(LinkedList<IconListItem> items, Context context) {
        this.contextRef = new WeakReference<>(null);
        this.contextRef = new WeakReference<>(context);
        this.items = items;
    }

    @Override
    public int getCount() {
        return this.items.size();
    }

    @Override
    public Object getItem(int position) {
        LinkedList<IconListItem> list = this.items;
        if (list != null) {
            return list.get(position);
        }
        return null;
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.contextRef.get()).inflate(2131493020, parent, false);
            holder = new ViewHolder();
            holder.titleView = (TextView) convertView.findViewById(2131296898);
            holder.iconView = (ImageView) convertView.findViewById(2131296552);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        holder.titleView.setText(this.items.get(position).getName());
        holder.iconView.setImageBitmap(this.items.get(position).getIcon());
        return convertView;
    }
}
