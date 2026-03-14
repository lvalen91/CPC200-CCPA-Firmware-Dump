package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.g0;
import androidx.core.view.v;
import androidx.core.widget.NestedScrollView;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;
    private final Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.appcompat.app.h f97b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Window f98c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f99d;
    private CharSequence e;
    private CharSequence f;
    ListView g;
    private View h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    Button o;
    private CharSequence p;
    Message q;
    private Drawable r;
    Button s;
    private CharSequence t;
    Message u;
    private Drawable v;
    Button w;
    private CharSequence x;
    Message y;
    private Drawable z;
    private boolean n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new a();

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f100b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f101c;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.j.RecycleListView);
            this.f101c = typedArrayObtainStyledAttributes.getDimensionPixelOffset(c.a.j.RecycleListView_paddingBottomNoButtons, -1);
            this.f100b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(c.a.j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void a(boolean z, boolean z2) {
            if (z2 && z) {
                return;
            }
            setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f100b, getPaddingRight(), z2 ? getPaddingBottom() : this.f101c);
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view != alertController.o || (message3 = alertController.q) == null) {
                AlertController alertController2 = AlertController.this;
                if (view != alertController2.s || (message2 = alertController2.u) == null) {
                    AlertController alertController3 = AlertController.this;
                    messageObtain = (view != alertController3.w || (message = alertController3.y) == null) ? null : Message.obtain(message);
                } else {
                    messageObtain = Message.obtain(message2);
                }
            } else {
                messageObtain = Message.obtain(message3);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController alertController4 = AlertController.this;
            alertController4.R.obtainMessage(1, alertController4.f97b).sendToTarget();
        }
    }

    class b implements NestedScrollView.b {
        final /* synthetic */ View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f103b;

        b(AlertController alertController, View view, View view2) {
            this.a = view;
            this.f103b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.b
        public void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            AlertController.f(nestedScrollView, this.a, this.f103b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f104b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f105c;

        c(View view, View view2) {
            this.f104b = view;
            this.f105c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.f(AlertController.this.A, this.f104b, this.f105c);
        }
    }

    class d implements AbsListView.OnScrollListener {
        final /* synthetic */ View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f107b;

        d(AlertController alertController, View view, View view2) {
            this.a = view;
            this.f107b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.f(absListView, this.a, this.f107b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f108b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f109c;

        e(View view, View view2) {
            this.f108b = view;
            this.f109c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.f(AlertController.this.g, this.f108b, this.f109c);
        }
    }

    public static class f {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;
        public e O;
        public final Context a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f111b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f113d;
        public CharSequence f;
        public View g;
        public CharSequence h;
        public CharSequence i;
        public Drawable j;
        public DialogInterface.OnClickListener k;
        public CharSequence l;
        public Drawable m;
        public DialogInterface.OnClickListener n;
        public CharSequence o;
        public Drawable p;
        public DialogInterface.OnClickListener q;
        public DialogInterface.OnCancelListener s;
        public DialogInterface.OnDismissListener t;
        public DialogInterface.OnKeyListener u;
        public CharSequence[] v;
        public ListAdapter w;
        public DialogInterface.OnClickListener x;
        public int y;
        public View z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f112c = 0;
        public int e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean r = true;

        class a extends ArrayAdapter<CharSequence> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ RecycleListView f114b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                this.f114b = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = f.this.F;
                if (zArr != null && zArr[i]) {
                    this.f114b.setItemChecked(i, true);
                }
                return view2;
            }
        }

        class b extends CursorAdapter {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f116b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final int f117c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ RecycleListView f118d;
            final /* synthetic */ AlertController e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                this.f118d = recycleListView;
                this.e = alertController;
                Cursor cursor2 = getCursor();
                this.f116b = cursor2.getColumnIndexOrThrow(f.this.L);
                this.f117c = cursor2.getColumnIndexOrThrow(f.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f116b));
                this.f118d.setItemChecked(cursor.getPosition(), cursor.getInt(this.f117c) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return f.this.f111b.inflate(this.e.M, viewGroup, false);
            }
        }

        class c implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AlertController f119b;

            c(AlertController alertController) {
                this.f119b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                f.this.x.onClick(this.f119b.f97b, i);
                if (f.this.H) {
                    return;
                }
                this.f119b.f97b.dismiss();
            }
        }

        class d implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ RecycleListView f121b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ AlertController f122c;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f121b = recycleListView;
                this.f122c = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = f.this.F;
                if (zArr != null) {
                    zArr[i] = this.f121b.isItemChecked(i);
                }
                f.this.J.onClick(this.f122c.f97b, i, this.f121b.isItemChecked(i));
            }
        }

        public interface e {
            void a(ListView listView);
        }

        public f(Context context) {
            this.a = context;
            this.f111b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void b(AlertController alertController) {
            ListAdapter hVar;
            RecycleListView recycleListView = (RecycleListView) this.f111b.inflate(alertController.L, (ViewGroup) null);
            if (this.G) {
                hVar = this.K == null ? new a(this.a, alertController.M, R.id.text1, this.v, recycleListView) : new b(this.a, this.K, false, recycleListView, alertController);
            } else {
                int i = this.H ? alertController.N : alertController.O;
                if (this.K != null) {
                    hVar = new SimpleCursorAdapter(this.a, i, this.K, new String[]{this.L}, new int[]{R.id.text1});
                } else {
                    hVar = this.w;
                    if (hVar == null) {
                        hVar = new h(this.a, i, R.id.text1, this.v);
                    }
                }
            }
            e eVar = this.O;
            if (eVar != null) {
                eVar.a(recycleListView);
            }
            alertController.H = hVar;
            alertController.I = this.I;
            if (this.x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.g = recycleListView;
        }

        public void a(AlertController alertController) {
            View view = this.g;
            if (view != null) {
                alertController.l(view);
            } else {
                CharSequence charSequence = this.f;
                if (charSequence != null) {
                    alertController.q(charSequence);
                }
                Drawable drawable = this.f113d;
                if (drawable != null) {
                    alertController.n(drawable);
                }
                int i = this.f112c;
                if (i != 0) {
                    alertController.m(i);
                }
                int i2 = this.e;
                if (i2 != 0) {
                    alertController.m(alertController.c(i2));
                }
            }
            CharSequence charSequence2 = this.h;
            if (charSequence2 != null) {
                alertController.o(charSequence2);
            }
            if (this.i != null || this.j != null) {
                alertController.k(-1, this.i, this.k, null, this.j);
            }
            if (this.l != null || this.m != null) {
                alertController.k(-2, this.l, this.n, null, this.m);
            }
            if (this.o != null || this.p != null) {
                alertController.k(-3, this.o, this.q, null, this.p);
            }
            if (this.v != null || this.K != null || this.w != null) {
                b(alertController);
            }
            View view2 = this.z;
            if (view2 != null) {
                if (this.E) {
                    alertController.t(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.s(view2);
                    return;
                }
            }
            int i3 = this.y;
            if (i3 != 0) {
                alertController.r(i3);
            }
        }
    }

    private static final class g extends Handler {
        private WeakReference<DialogInterface> a;

        public g(DialogInterface dialogInterface) {
            this.a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.a.get(), message.what);
            } else {
                if (i != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static class h extends ArrayAdapter<CharSequence> {
        public h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, androidx.appcompat.app.h hVar, Window window) {
        this.a = context;
        this.f97b = hVar;
        this.f98c = window;
        this.R = new g(hVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, c.a.j.AlertDialog, c.a.a.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AlertDialog_android_layout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AlertDialog_buttonPanelSideLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AlertDialog_listLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AlertDialog_multiChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AlertDialog_singleChoiceItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AlertDialog_listItemLayout, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(c.a.j.AlertDialog_showTitle, true);
        this.f99d = typedArrayObtainStyledAttributes.getDimensionPixelSize(c.a.j.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        hVar.d(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    static void f(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    private ViewGroup i(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int j() {
        int i = this.K;
        return i == 0 ? this.J : this.Q == 1 ? i : this.J;
    }

    private void p(ViewGroup viewGroup, View view, int i, int i2) {
        View viewFindViewById = this.f98c.findViewById(c.a.f.scrollIndicatorUp);
        View viewFindViewById2 = this.f98c.findViewById(c.a.f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            v.B0(view, i, i2);
            if (viewFindViewById != null) {
                viewGroup.removeView(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                viewGroup.removeView(viewFindViewById2);
                return;
            }
            return;
        }
        if (viewFindViewById != null && (i & 1) == 0) {
            viewGroup.removeView(viewFindViewById);
            viewFindViewById = null;
        }
        if (viewFindViewById2 != null && (i & 2) == 0) {
            viewGroup.removeView(viewFindViewById2);
            viewFindViewById2 = null;
        }
        if (viewFindViewById == null && viewFindViewById2 == null) {
            return;
        }
        if (this.f != null) {
            this.A.setOnScrollChangeListener(new b(this, viewFindViewById, viewFindViewById2));
            this.A.post(new c(viewFindViewById, viewFindViewById2));
            return;
        }
        ListView listView = this.g;
        if (listView != null) {
            listView.setOnScrollListener(new d(this, viewFindViewById, viewFindViewById2));
            this.g.post(new e(viewFindViewById, viewFindViewById2));
            return;
        }
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    private void u(ViewGroup viewGroup) {
        int i;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.o = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.p) && this.r == null) {
            this.o.setVisibility(8);
            i = 0;
        } else {
            this.o.setText(this.p);
            Drawable drawable = this.r;
            if (drawable != null) {
                int i2 = this.f99d;
                drawable.setBounds(0, 0, i2, i2);
                this.o.setCompoundDrawables(this.r, null, null, null);
            }
            this.o.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.t) && this.v == null) {
            this.s.setVisibility(8);
        } else {
            this.s.setText(this.t);
            Drawable drawable2 = this.v;
            if (drawable2 != null) {
                int i3 = this.f99d;
                drawable2.setBounds(0, 0, i3, i3);
                this.s.setCompoundDrawables(this.v, null, null, null);
            }
            this.s.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.x) && this.z == null) {
            this.w.setVisibility(8);
        } else {
            this.w.setText(this.x);
            Drawable drawable3 = this.z;
            if (drawable3 != null) {
                int i4 = this.f99d;
                drawable3.setBounds(0, 0, i4, i4);
                this.w.setCompoundDrawables(this.z, null, null, null);
            }
            this.w.setVisibility(0);
            i |= 4;
        }
        if (z(this.a)) {
            if (i == 1) {
                b(this.o);
            } else if (i == 2) {
                b(this.s);
            } else if (i == 4) {
                b(this.w);
            }
        }
        if (i != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void v(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f98c.findViewById(c.a.f.scrollView);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    private void w(ViewGroup viewGroup) {
        View viewInflate = this.h;
        if (viewInflate == null) {
            viewInflate = this.i != 0 ? LayoutInflater.from(this.a).inflate(this.i, viewGroup, false) : null;
        }
        boolean z = viewInflate != null;
        if (!z || !a(viewInflate)) {
            this.f98c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f98c.findViewById(c.a.f.custom);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.n) {
            frameLayout.setPadding(this.j, this.k, this.l, this.m);
        }
        if (this.g != null) {
            ((LinearLayout.LayoutParams) ((g0.a) viewGroup.getLayoutParams())).weight = CropImageView.DEFAULT_ASPECT_RATIO;
        }
    }

    private void x(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f98c.findViewById(c.a.f.title_template).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f98c.findViewById(R.id.icon);
        if (!(!TextUtils.isEmpty(this.e)) || !this.P) {
            this.f98c.findViewById(c.a.f.title_template).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f98c.findViewById(c.a.f.alertTitle);
        this.E = textView;
        textView.setText(this.e);
        int i = this.B;
        if (i != 0) {
            this.D.setImageResource(i);
            return;
        }
        Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
        } else {
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void y() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.f98c.findViewById(c.a.f.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(c.a.f.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(c.a.f.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(c.a.f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(c.a.f.customPanel);
        w(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(c.a.f.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(c.a.f.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(c.a.f.buttonPanel);
        ViewGroup viewGroupI = i(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupI2 = i(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupI3 = i(viewFindViewById9, viewFindViewById6);
        v(viewGroupI2);
        u(viewGroupI3);
        x(viewGroupI);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (viewGroupI == null || viewGroupI.getVisibility() == 8) ? 0 : 1;
        boolean z3 = (viewGroupI3 == null || viewGroupI3.getVisibility() == 8) ? false : true;
        if (!z3 && viewGroupI2 != null && (viewFindViewById2 = viewGroupI2.findViewById(c.a.f.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z2 != 0) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.f == null && this.g == null) ? null : viewGroupI.findViewById(c.a.f.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupI2 != null && (viewFindViewById = viewGroupI2.findViewById(c.a.f.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z2, z3);
        }
        if (!z) {
            View view = this.g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                p(viewGroupI2, view, z2 | (z3 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i = this.I;
        if (i > -1) {
            listView2.setItemChecked(i, true);
            listView2.setSelection(i);
        }
    }

    private static boolean z(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(c.a.a.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public int c(int i) {
        TypedValue typedValue = new TypedValue();
        this.a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView d() {
        return this.g;
    }

    public void e() {
        this.f97b.setContentView(j());
        y();
    }

    public boolean g(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.q(keyEvent);
    }

    public boolean h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.q(keyEvent);
    }

    public void k(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.x = charSequence;
            this.y = message;
            this.z = drawable;
        } else if (i == -2) {
            this.t = charSequence;
            this.u = message;
            this.v = drawable;
        } else {
            if (i != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.p = charSequence;
            this.q = message;
            this.r = drawable;
        }
    }

    public void l(View view) {
        this.G = view;
    }

    public void m(int i) {
        this.C = null;
        this.B = i;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public void n(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            }
        }
    }

    public void o(CharSequence charSequence) {
        this.f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void q(CharSequence charSequence) {
        this.e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void r(int i) {
        this.h = null;
        this.i = i;
        this.n = false;
    }

    public void s(View view) {
        this.h = view;
        this.i = 0;
        this.n = false;
    }

    public void t(View view, int i, int i2, int i3, int i4) {
        this.h = view;
        this.i = 0;
        this.n = true;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
    }
}
