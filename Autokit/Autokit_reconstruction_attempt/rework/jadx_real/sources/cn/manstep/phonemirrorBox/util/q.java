package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class q {
    private final ListPopupWindow a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f1912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cn.manstep.phonemirrorBox.d0.g f1913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f1914d;
    private d e;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f1915b;

        a(c cVar) {
            this.f1915b = cVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f1915b.f != null) {
                this.f1915b.f.onItemClick(adapterView, view, i, j);
            }
            q.this.a.dismiss();
        }
    }

    class b implements PopupWindow.OnDismissListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f1917b;

        b(c cVar) {
            this.f1917b = cVar;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (this.f1917b.f1921d != null) {
                this.f1917b.f1921d.a(false);
            }
            if (q.this.e != null) {
                q.this.e.a(false);
            }
        }
    }

    public static class c {
        private final Context a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f1919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final cn.manstep.phonemirrorBox.d0.g f1920c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d f1921d;
        private Drawable e;
        private AdapterView.OnItemClickListener f;
        private int g;
        private int h = 0;
        private int i = 0;
        private int j = 10;
        private int k = 50;

        public c(View view, cn.manstep.phonemirrorBox.d0.g gVar) {
            this.a = view.getContext();
            this.f1919b = view;
            this.f1920c = gVar;
        }

        public q l() {
            return new q(this);
        }

        public c m(Drawable drawable) {
            this.e = drawable;
            return this;
        }

        public c n(int i) {
            this.h = i;
            return this;
        }

        public c o(AdapterView.OnItemClickListener onItemClickListener) {
            this.f = onItemClickListener;
            return this;
        }

        public c p(d dVar) {
            this.f1921d = dVar;
            return this;
        }

        public c q(int i) {
            this.g = i;
            return this;
        }

        public c r(int i) {
            this.i = i;
            return this;
        }
    }

    public interface d {
        void a(boolean z);
    }

    public q(c cVar) {
        ListPopupWindow listPopupWindow = new ListPopupWindow(cVar.a);
        this.a = listPopupWindow;
        listPopupWindow.setAnchorView(cVar.f1919b);
        this.a.setAdapter(cVar.f1920c);
        this.a.setModal(true);
        this.f1914d = cVar;
        this.f1912b = cVar.f1919b;
        this.f1913c = cVar.f1920c;
        int width = cVar.f1919b.getWidth() / 2;
        int height = cVar.f1919b.getHeight() * 2;
        if (cVar.i == 0) {
            this.a.setWidth(width);
        } else {
            this.a.setWidth(cVar.i);
        }
        if (cVar.h == 0) {
            this.a.setHeight(height);
        } else {
            this.a.setHeight(cVar.h);
        }
        this.a.setHorizontalOffset(cVar.g - (width / 2));
        this.a.setVerticalOffset((-cVar.f1919b.getHeight()) / 4);
        if (cVar.e != null) {
            this.a.setBackgroundDrawable(cVar.e);
        }
        this.a.setOnItemClickListener(new a(cVar));
        this.a.setOnDismissListener(new b(cVar));
    }

    public void c(d dVar) {
        this.e = dVar;
    }

    public void d(int i, int i2) {
        this.a.setHorizontalOffset(i - ((this.f1912b.getWidth() / 2) / 2));
        this.f1913c.a(i2);
        this.a.show();
        if (this.f1914d.f1921d != null) {
            this.f1914d.f1921d.a(false);
        }
        d dVar = this.e;
        if (dVar != null) {
            dVar.a(true);
        }
        ListView listView = this.a.getListView();
        if (listView != null) {
            ((ViewGroup.MarginLayoutParams) listView.getLayoutParams()).setMargins(0, this.f1914d.j, 0, this.f1914d.j);
            listView.setVerticalFadingEdgeEnabled(true);
            listView.setFadingEdgeLength(this.f1914d.k);
            listView.setVerticalScrollBarEnabled(false);
            listView.setSelection(i2);
            listView.setOverScrollMode(2);
        }
    }
}
