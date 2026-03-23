package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.PopupWindow;
import cn.manstep.phonemirrorBox.p070d0.AbstractC0806g;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.q */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0980q {

    /* JADX INFO: renamed from: a */
    private final ListPopupWindow f6117a;

    /* JADX INFO: renamed from: b */
    private final View f6118b;

    /* JADX INFO: renamed from: c */
    private final AbstractC0806g f6119c;

    /* JADX INFO: renamed from: d */
    private final c f6120d;

    /* JADX INFO: renamed from: e */
    private d f6121e;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.q$a */
    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ c f6122b;

        a(c cVar) {
            this.f6122b = cVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f6122b.f6131f != null) {
                this.f6122b.f6131f.onItemClick(adapterView, view, i, j);
            }
            C0980q.this.f6117a.dismiss();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.q$b */
    class b implements PopupWindow.OnDismissListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ c f6124b;

        b(c cVar) {
            this.f6124b = cVar;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (this.f6124b.f6129d != null) {
                this.f6124b.f6129d.mo6148a(false);
            }
            if (C0980q.this.f6121e != null) {
                C0980q.this.f6121e.mo6148a(false);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.q$c */
    public static class c {

        /* JADX INFO: renamed from: a */
        private final Context f6126a;

        /* JADX INFO: renamed from: b */
        private final View f6127b;

        /* JADX INFO: renamed from: c */
        private final AbstractC0806g f6128c;

        /* JADX INFO: renamed from: d */
        private d f6129d;

        /* JADX INFO: renamed from: e */
        private Drawable f6130e;

        /* JADX INFO: renamed from: f */
        private AdapterView.OnItemClickListener f6131f;

        /* JADX INFO: renamed from: g */
        private int f6132g;

        /* JADX INFO: renamed from: h */
        private int f6133h = 0;

        /* JADX INFO: renamed from: i */
        private int f6134i = 0;

        /* JADX INFO: renamed from: j */
        private int f6135j = 10;

        /* JADX INFO: renamed from: k */
        private int f6136k = 50;

        public c(View view, AbstractC0806g abstractC0806g) {
            this.f6126a = view.getContext();
            this.f6127b = view;
            this.f6128c = abstractC0806g;
        }

        /* JADX INFO: renamed from: l */
        public C0980q m7359l() {
            return new C0980q(this);
        }

        /* JADX INFO: renamed from: m */
        public c m7360m(Drawable drawable) {
            this.f6130e = drawable;
            return this;
        }

        /* JADX INFO: renamed from: n */
        public c m7361n(int i) {
            this.f6133h = i;
            return this;
        }

        /* JADX INFO: renamed from: o */
        public c m7362o(AdapterView.OnItemClickListener onItemClickListener) {
            this.f6131f = onItemClickListener;
            return this;
        }

        /* JADX INFO: renamed from: p */
        public c m7363p(d dVar) {
            this.f6129d = dVar;
            return this;
        }

        /* JADX INFO: renamed from: q */
        public c m7364q(int i) {
            this.f6132g = i;
            return this;
        }

        /* JADX INFO: renamed from: r */
        public c m7365r(int i) {
            this.f6134i = i;
            return this;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.q$d */
    public interface d {
        /* JADX INFO: renamed from: a */
        void mo6148a(boolean z);
    }

    public C0980q(c cVar) {
        ListPopupWindow listPopupWindow = new ListPopupWindow(cVar.f6126a);
        this.f6117a = listPopupWindow;
        listPopupWindow.setAnchorView(cVar.f6127b);
        this.f6117a.setAdapter(cVar.f6128c);
        this.f6117a.setModal(true);
        this.f6120d = cVar;
        this.f6118b = cVar.f6127b;
        this.f6119c = cVar.f6128c;
        int width = cVar.f6127b.getWidth() / 2;
        int height = cVar.f6127b.getHeight() * 2;
        if (cVar.f6134i == 0) {
            this.f6117a.setWidth(width);
        } else {
            this.f6117a.setWidth(cVar.f6134i);
        }
        if (cVar.f6133h == 0) {
            this.f6117a.setHeight(height);
        } else {
            this.f6117a.setHeight(cVar.f6133h);
        }
        this.f6117a.setHorizontalOffset(cVar.f6132g - (width / 2));
        this.f6117a.setVerticalOffset((-cVar.f6127b.getHeight()) / 4);
        if (cVar.f6130e != null) {
            this.f6117a.setBackgroundDrawable(cVar.f6130e);
        }
        this.f6117a.setOnItemClickListener(new a(cVar));
        this.f6117a.setOnDismissListener(new b(cVar));
    }

    /* JADX INFO: renamed from: c */
    public void m7346c(d dVar) {
        this.f6121e = dVar;
    }

    /* JADX INFO: renamed from: d */
    public void m7347d(int i, int i2) {
        this.f6117a.setHorizontalOffset(i - ((this.f6118b.getWidth() / 2) / 2));
        this.f6119c.m6176a(i2);
        this.f6117a.show();
        if (this.f6120d.f6129d != null) {
            this.f6120d.f6129d.mo6148a(false);
        }
        d dVar = this.f6121e;
        if (dVar != null) {
            dVar.mo6148a(true);
        }
        ListView listView = this.f6117a.getListView();
        if (listView != null) {
            ((ViewGroup.MarginLayoutParams) listView.getLayoutParams()).setMargins(0, this.f6120d.f6135j, 0, this.f6120d.f6135j);
            listView.setVerticalFadingEdgeEnabled(true);
            listView.setFadingEdgeLength(this.f6120d.f6136k);
            listView.setVerticalScrollBarEnabled(false);
            listView.setSelection(i2);
            listView.setOverScrollMode(2);
        }
    }
}
