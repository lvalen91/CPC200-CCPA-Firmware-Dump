package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0242a;
import com.yalantis.ucrop.BuildConfig;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import p016c.p017a.C0493a;
import p016c.p017a.C0498f;
import p016c.p050h.p051a.AbstractC0629c;

/* JADX INFO: renamed from: androidx.appcompat.widget.o0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ViewOnClickListenerC0183o0 extends AbstractC0629c implements View.OnClickListener {

    /* JADX INFO: renamed from: m */
    private final SearchView f1234m;

    /* JADX INFO: renamed from: n */
    private final SearchableInfo f1235n;

    /* JADX INFO: renamed from: o */
    private final Context f1236o;

    /* JADX INFO: renamed from: p */
    private final WeakHashMap<String, Drawable.ConstantState> f1237p;

    /* JADX INFO: renamed from: q */
    private final int f1238q;

    /* JADX INFO: renamed from: r */
    private boolean f1239r;

    /* JADX INFO: renamed from: s */
    private int f1240s;

    /* JADX INFO: renamed from: t */
    private ColorStateList f1241t;

    /* JADX INFO: renamed from: u */
    private int f1242u;

    /* JADX INFO: renamed from: v */
    private int f1243v;

    /* JADX INFO: renamed from: w */
    private int f1244w;

    /* JADX INFO: renamed from: x */
    private int f1245x;

    /* JADX INFO: renamed from: y */
    private int f1246y;

    /* JADX INFO: renamed from: z */
    private int f1247z;

    /* JADX INFO: renamed from: androidx.appcompat.widget.o0$a */
    private static final class a {

        /* JADX INFO: renamed from: a */
        public final TextView f1248a;

        /* JADX INFO: renamed from: b */
        public final TextView f1249b;

        /* JADX INFO: renamed from: c */
        public final ImageView f1250c;

        /* JADX INFO: renamed from: d */
        public final ImageView f1251d;

        /* JADX INFO: renamed from: e */
        public final ImageView f1252e;

        public a(View view) {
            this.f1248a = (TextView) view.findViewById(R.id.text1);
            this.f1249b = (TextView) view.findViewById(R.id.text2);
            this.f1250c = (ImageView) view.findViewById(R.id.icon1);
            this.f1251d = (ImageView) view.findViewById(R.id.icon2);
            this.f1252e = (ImageView) view.findViewById(C0498f.edit_query);
        }
    }

    public ViewOnClickListenerC0183o0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1239r = false;
        this.f1240s = 1;
        this.f1242u = -1;
        this.f1243v = -1;
        this.f1244w = -1;
        this.f1245x = -1;
        this.f1246y = -1;
        this.f1247z = -1;
        this.f1234m = searchView;
        this.f1235n = searchableInfo;
        this.f1238q = searchView.getSuggestionCommitIconResId();
        this.f1236o = context;
        this.f1237p = weakHashMap;
    }

    /* JADX INFO: renamed from: A */
    private void m1251A(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1237p.put(str, drawable.getConstantState());
        }
    }

    /* JADX INFO: renamed from: B */
    private void m1252B(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    /* JADX INFO: renamed from: k */
    private Drawable m1253k(String str) {
        Drawable.ConstantState constantState = this.f1237p.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* JADX INFO: renamed from: l */
    private CharSequence m1254l(CharSequence charSequence) {
        if (this.f1241t == null) {
            TypedValue typedValue = new TypedValue();
            this.f1236o.getTheme().resolveAttribute(C0493a.textColorSearchUrl, typedValue, true);
            this.f1241t = this.f1236o.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1241t, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* JADX INFO: renamed from: m */
    private Drawable m1255m(ComponentName componentName) {
        PackageManager packageManager = this.f1236o.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            String str = "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString();
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            e.toString();
            return null;
        }
    }

    /* JADX INFO: renamed from: n */
    private Drawable m1256n(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.f1237p.containsKey(strFlattenToShortString)) {
            Drawable drawableM1255m = m1255m(componentName);
            this.f1237p.put(strFlattenToShortString, drawableM1255m != null ? drawableM1255m.getConstantState() : null);
            return drawableM1255m;
        }
        Drawable.ConstantState constantState = this.f1237p.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.f1236o.getResources());
    }

    /* JADX INFO: renamed from: o */
    public static String m1257o(Cursor cursor, String str) {
        return m1263w(cursor, cursor.getColumnIndex(str));
    }

    /* JADX INFO: renamed from: p */
    private Drawable m1258p() {
        Drawable drawableM1256n = m1256n(this.f1235n.getSearchActivity());
        return drawableM1256n != null ? drawableM1256n : this.f1236o.getPackageManager().getDefaultActivityIcon();
    }

    /* JADX INFO: renamed from: q */
    private Drawable m1259q(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m1271r(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.f1236o.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                return Drawable.createFromStream(inputStreamOpenInputStream, null);
            } finally {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException unused2) {
                    String str = "Error closing icon stream for " + uri;
                }
            }
        } catch (FileNotFoundException e) {
            String str2 = "Icon not found: " + uri + ", " + e.getMessage();
            return null;
        }
        String str22 = "Icon not found: " + uri + ", " + e.getMessage();
        return null;
    }

    /* JADX INFO: renamed from: s */
    private Drawable m1260s(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int i = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f1236o.getPackageName() + "/" + i;
            Drawable drawableM1253k = m1253k(str2);
            if (drawableM1253k != null) {
                return drawableM1253k;
            }
            Drawable drawableM1699d = C0242a.m1699d(this.f1236o, i);
            m1251A(str2, drawableM1699d);
            return drawableM1699d;
        } catch (Resources.NotFoundException unused) {
            String str3 = "Icon resource not found: " + str;
            return null;
        } catch (NumberFormatException unused2) {
            Drawable drawableM1253k2 = m1253k(str);
            if (drawableM1253k2 != null) {
                return drawableM1253k2;
            }
            Drawable drawableM1259q = m1259q(Uri.parse(str));
            m1251A(str, drawableM1259q);
            return drawableM1259q;
        }
    }

    /* JADX INFO: renamed from: t */
    private Drawable m1261t(Cursor cursor) {
        int i = this.f1245x;
        if (i == -1) {
            return null;
        }
        Drawable drawableM1260s = m1260s(cursor.getString(i));
        return drawableM1260s != null ? drawableM1260s : m1258p();
    }

    /* JADX INFO: renamed from: u */
    private Drawable m1262u(Cursor cursor) {
        int i = this.f1246y;
        if (i == -1) {
            return null;
        }
        return m1260s(cursor.getString(i));
    }

    /* JADX INFO: renamed from: w */
    private static String m1263w(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: y */
    private void m1264y(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    /* JADX INFO: renamed from: z */
    private void m1265z(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    @Override // p016c.p050h.p051a.AbstractC0627a, p016c.p050h.p051a.C0628b.a
    /* JADX INFO: renamed from: a */
    public CharSequence mo1266a(Cursor cursor) {
        String strM1257o;
        String strM1257o2;
        if (cursor == null) {
            return null;
        }
        String strM1257o3 = m1257o(cursor, "suggest_intent_query");
        if (strM1257o3 != null) {
            return strM1257o3;
        }
        if (this.f1235n.shouldRewriteQueryFromData() && (strM1257o2 = m1257o(cursor, "suggest_intent_data")) != null) {
            return strM1257o2;
        }
        if (!this.f1235n.shouldRewriteQueryFromText() || (strM1257o = m1257o(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strM1257o;
    }

    @Override // p016c.p050h.p051a.AbstractC0627a, p016c.p050h.p051a.C0628b.a
    /* JADX INFO: renamed from: b */
    public void mo1267b(Cursor cursor) {
        if (this.f1239r) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.mo1267b(cursor);
            if (cursor != null) {
                this.f1242u = cursor.getColumnIndex("suggest_text_1");
                this.f1243v = cursor.getColumnIndex("suggest_text_2");
                this.f1244w = cursor.getColumnIndex("suggest_text_2_url");
                this.f1245x = cursor.getColumnIndex("suggest_icon_1");
                this.f1246y = cursor.getColumnIndex("suggest_icon_2");
                this.f1247z = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception unused) {
        }
    }

    @Override // p016c.p050h.p051a.C0628b.a
    /* JADX INFO: renamed from: d */
    public Cursor mo1268d(CharSequence charSequence) {
        String string = charSequence == null ? BuildConfig.FLAVOR : charSequence.toString();
        if (this.f1234m.getVisibility() == 0 && this.f1234m.getWindowVisibility() == 0) {
            try {
                Cursor cursorM1272v = m1272v(this.f1235n, string, 50);
                if (cursorM1272v != null) {
                    cursorM1272v.getCount();
                    return cursorM1272v;
                }
            } catch (RuntimeException unused) {
            }
        }
        return null;
    }

    @Override // p016c.p050h.p051a.AbstractC0627a
    /* JADX INFO: renamed from: e */
    public void mo1269e(View view, Context context, Cursor cursor) {
        a aVar = (a) view.getTag();
        int i = this.f1247z;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (aVar.f1248a != null) {
            m1265z(aVar.f1248a, m1263w(cursor, this.f1242u));
        }
        if (aVar.f1249b != null) {
            String strM1263w = m1263w(cursor, this.f1244w);
            CharSequence charSequenceM1254l = strM1263w != null ? m1254l(strM1263w) : m1263w(cursor, this.f1243v);
            if (TextUtils.isEmpty(charSequenceM1254l)) {
                TextView textView = aVar.f1248a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f1248a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f1248a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f1248a.setMaxLines(1);
                }
            }
            m1265z(aVar.f1249b, charSequenceM1254l);
        }
        ImageView imageView = aVar.f1250c;
        if (imageView != null) {
            m1264y(imageView, m1261t(cursor), 4);
        }
        ImageView imageView2 = aVar.f1251d;
        if (imageView2 != null) {
            m1264y(imageView2, m1262u(cursor), 8);
        }
        int i3 = this.f1240s;
        if (i3 != 2 && (i3 != 1 || (i2 & 1) == 0)) {
            aVar.f1252e.setVisibility(8);
            return;
        }
        aVar.f1252e.setVisibility(0);
        aVar.f1252e.setTag(aVar.f1248a.getText());
        aVar.f1252e.setOnClickListener(this);
    }

    @Override // p016c.p050h.p051a.AbstractC0627a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            View viewMo4859g = mo4859g(this.f1236o, mo4857c(), viewGroup);
            if (viewMo4859g != null) {
                ((a) viewMo4859g.getTag()).f1248a.setText(e.toString());
            }
            return viewMo4859g;
        }
    }

    @Override // p016c.p050h.p051a.AbstractC0627a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            View viewMo1270h = mo1270h(this.f1236o, mo4857c(), viewGroup);
            if (viewMo1270h != null) {
                ((a) viewMo1270h.getTag()).f1248a.setText(e.toString());
            }
            return viewMo1270h;
        }
    }

    @Override // p016c.p050h.p051a.AbstractC0629c, p016c.p050h.p051a.AbstractC0627a
    /* JADX INFO: renamed from: h */
    public View mo1270h(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewMo1270h = super.mo1270h(context, cursor, viewGroup);
        viewMo1270h.setTag(new a(viewMo1270h));
        ((ImageView) viewMo1270h.findViewById(C0498f.edit_query)).setImageResource(this.f1238q);
        return viewMo1270h;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m1252B(mo4857c());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m1252B(mo4857c());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1234m.m925U((CharSequence) tag);
        }
    }

    /* JADX INFO: renamed from: r */
    Drawable m1271r(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1236o.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* JADX INFO: renamed from: v */
    Cursor m1272v(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query(BuildConfig.FLAVOR).fragment(BuildConfig.FLAVOR);
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i > 0) {
            builderFragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f1236o.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    /* JADX INFO: renamed from: x */
    public void m1273x(int i) {
        this.f1240s = i;
    }
}
