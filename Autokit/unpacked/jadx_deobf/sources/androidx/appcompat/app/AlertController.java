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
import androidx.appcompat.widget.C0167g0;
import androidx.core.view.C0292v;
import androidx.core.widget.NestedScrollView;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import p016c.p017a.C0493a;
import p016c.p017a.C0498f;
import p016c.p017a.C0502j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class AlertController {

    /* JADX INFO: renamed from: A */
    NestedScrollView f217A;

    /* JADX INFO: renamed from: C */
    private Drawable f219C;

    /* JADX INFO: renamed from: D */
    private ImageView f220D;

    /* JADX INFO: renamed from: E */
    private TextView f221E;

    /* JADX INFO: renamed from: F */
    private TextView f222F;

    /* JADX INFO: renamed from: G */
    private View f223G;

    /* JADX INFO: renamed from: H */
    ListAdapter f224H;

    /* JADX INFO: renamed from: J */
    private int f226J;

    /* JADX INFO: renamed from: K */
    private int f227K;

    /* JADX INFO: renamed from: L */
    int f228L;

    /* JADX INFO: renamed from: M */
    int f229M;

    /* JADX INFO: renamed from: N */
    int f230N;

    /* JADX INFO: renamed from: O */
    int f231O;

    /* JADX INFO: renamed from: P */
    private boolean f232P;

    /* JADX INFO: renamed from: R */
    Handler f234R;

    /* JADX INFO: renamed from: a */
    private final Context f236a;

    /* JADX INFO: renamed from: b */
    final DialogC0085h f237b;

    /* JADX INFO: renamed from: c */
    private final Window f238c;

    /* JADX INFO: renamed from: d */
    private final int f239d;

    /* JADX INFO: renamed from: e */
    private CharSequence f240e;

    /* JADX INFO: renamed from: f */
    private CharSequence f241f;

    /* JADX INFO: renamed from: g */
    ListView f242g;

    /* JADX INFO: renamed from: h */
    private View f243h;

    /* JADX INFO: renamed from: i */
    private int f244i;

    /* JADX INFO: renamed from: j */
    private int f245j;

    /* JADX INFO: renamed from: k */
    private int f246k;

    /* JADX INFO: renamed from: l */
    private int f247l;

    /* JADX INFO: renamed from: m */
    private int f248m;

    /* JADX INFO: renamed from: o */
    Button f250o;

    /* JADX INFO: renamed from: p */
    private CharSequence f251p;

    /* JADX INFO: renamed from: q */
    Message f252q;

    /* JADX INFO: renamed from: r */
    private Drawable f253r;

    /* JADX INFO: renamed from: s */
    Button f254s;

    /* JADX INFO: renamed from: t */
    private CharSequence f255t;

    /* JADX INFO: renamed from: u */
    Message f256u;

    /* JADX INFO: renamed from: v */
    private Drawable f257v;

    /* JADX INFO: renamed from: w */
    Button f258w;

    /* JADX INFO: renamed from: x */
    private CharSequence f259x;

    /* JADX INFO: renamed from: y */
    Message f260y;

    /* JADX INFO: renamed from: z */
    private Drawable f261z;

    /* JADX INFO: renamed from: n */
    private boolean f249n = false;

    /* JADX INFO: renamed from: B */
    private int f218B = 0;

    /* JADX INFO: renamed from: I */
    int f225I = -1;

    /* JADX INFO: renamed from: Q */
    private int f233Q = 0;

    /* JADX INFO: renamed from: S */
    private final View.OnClickListener f235S = new ViewOnClickListenerC0070a();

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: b */
        private final int f262b;

        /* JADX INFO: renamed from: c */
        private final int f263c;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0502j.RecycleListView);
            this.f263c = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0502j.RecycleListView_paddingBottomNoButtons, -1);
            this.f262b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0502j.RecycleListView_paddingTopNoTitle, -1);
        }

        /* JADX INFO: renamed from: a */
        public void m391a(boolean z, boolean z2) {
            if (z2 && z) {
                return;
            }
            setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f262b, getPaddingRight(), z2 ? getPaddingBottom() : this.f263c);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$a */
    class ViewOnClickListenerC0070a implements View.OnClickListener {
        ViewOnClickListenerC0070a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view != alertController.f250o || (message3 = alertController.f252q) == null) {
                AlertController alertController2 = AlertController.this;
                if (view != alertController2.f254s || (message2 = alertController2.f256u) == null) {
                    AlertController alertController3 = AlertController.this;
                    messageObtain = (view != alertController3.f258w || (message = alertController3.f260y) == null) ? null : Message.obtain(message);
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
            alertController4.f234R.obtainMessage(1, alertController4.f237b).sendToTarget();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$b */
    class C0071b implements NestedScrollView.InterfaceC0298b {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f265a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f266b;

        C0071b(AlertController alertController, View view, View view2) {
            this.f265a = view;
            this.f266b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.InterfaceC0298b
        /* JADX INFO: renamed from: a */
        public void mo392a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            AlertController.m367f(nestedScrollView, this.f265a, this.f266b);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$c */
    class RunnableC0072c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f267b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f268c;

        RunnableC0072c(View view, View view2) {
            this.f267b = view;
            this.f268c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m367f(AlertController.this.f217A, this.f267b, this.f268c);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$d */
    class C0073d implements AbsListView.OnScrollListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f270a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f271b;

        C0073d(AlertController alertController, View view, View view2) {
            this.f270a = view;
            this.f271b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m367f(absListView, this.f270a, this.f271b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$e */
    class RunnableC0074e implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f272b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f273c;

        RunnableC0074e(View view, View view2) {
            this.f272b = view;
            this.f273c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m367f(AlertController.this.f242g, this.f272b, this.f273c);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$f */
    public static class C0075f {

        /* JADX INFO: renamed from: A */
        public int f275A;

        /* JADX INFO: renamed from: B */
        public int f276B;

        /* JADX INFO: renamed from: C */
        public int f277C;

        /* JADX INFO: renamed from: D */
        public int f278D;

        /* JADX INFO: renamed from: F */
        public boolean[] f280F;

        /* JADX INFO: renamed from: G */
        public boolean f281G;

        /* JADX INFO: renamed from: H */
        public boolean f282H;

        /* JADX INFO: renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f284J;

        /* JADX INFO: renamed from: K */
        public Cursor f285K;

        /* JADX INFO: renamed from: L */
        public String f286L;

        /* JADX INFO: renamed from: M */
        public String f287M;

        /* JADX INFO: renamed from: N */
        public AdapterView.OnItemSelectedListener f288N;

        /* JADX INFO: renamed from: O */
        public e f289O;

        /* JADX INFO: renamed from: a */
        public final Context f290a;

        /* JADX INFO: renamed from: b */
        public final LayoutInflater f291b;

        /* JADX INFO: renamed from: d */
        public Drawable f293d;

        /* JADX INFO: renamed from: f */
        public CharSequence f295f;

        /* JADX INFO: renamed from: g */
        public View f296g;

        /* JADX INFO: renamed from: h */
        public CharSequence f297h;

        /* JADX INFO: renamed from: i */
        public CharSequence f298i;

        /* JADX INFO: renamed from: j */
        public Drawable f299j;

        /* JADX INFO: renamed from: k */
        public DialogInterface.OnClickListener f300k;

        /* JADX INFO: renamed from: l */
        public CharSequence f301l;

        /* JADX INFO: renamed from: m */
        public Drawable f302m;

        /* JADX INFO: renamed from: n */
        public DialogInterface.OnClickListener f303n;

        /* JADX INFO: renamed from: o */
        public CharSequence f304o;

        /* JADX INFO: renamed from: p */
        public Drawable f305p;

        /* JADX INFO: renamed from: q */
        public DialogInterface.OnClickListener f306q;

        /* JADX INFO: renamed from: s */
        public DialogInterface.OnCancelListener f308s;

        /* JADX INFO: renamed from: t */
        public DialogInterface.OnDismissListener f309t;

        /* JADX INFO: renamed from: u */
        public DialogInterface.OnKeyListener f310u;

        /* JADX INFO: renamed from: v */
        public CharSequence[] f311v;

        /* JADX INFO: renamed from: w */
        public ListAdapter f312w;

        /* JADX INFO: renamed from: x */
        public DialogInterface.OnClickListener f313x;

        /* JADX INFO: renamed from: y */
        public int f314y;

        /* JADX INFO: renamed from: z */
        public View f315z;

        /* JADX INFO: renamed from: c */
        public int f292c = 0;

        /* JADX INFO: renamed from: e */
        public int f294e = 0;

        /* JADX INFO: renamed from: E */
        public boolean f279E = false;

        /* JADX INFO: renamed from: I */
        public int f283I = -1;

        /* JADX INFO: renamed from: r */
        public boolean f307r = true;

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$f$a */
        class a extends ArrayAdapter<CharSequence> {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ RecycleListView f316b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                this.f316b = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = C0075f.this.f280F;
                if (zArr != null && zArr[i]) {
                    this.f316b.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$f$b */
        class b extends CursorAdapter {

            /* JADX INFO: renamed from: b */
            private final int f318b;

            /* JADX INFO: renamed from: c */
            private final int f319c;

            /* JADX INFO: renamed from: d */
            final /* synthetic */ RecycleListView f320d;

            /* JADX INFO: renamed from: e */
            final /* synthetic */ AlertController f321e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                this.f320d = recycleListView;
                this.f321e = alertController;
                Cursor cursor2 = getCursor();
                this.f318b = cursor2.getColumnIndexOrThrow(C0075f.this.f286L);
                this.f319c = cursor2.getColumnIndexOrThrow(C0075f.this.f287M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f318b));
                this.f320d.setItemChecked(cursor.getPosition(), cursor.getInt(this.f319c) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0075f.this.f291b.inflate(this.f321e.f229M, viewGroup, false);
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$f$c */
        class c implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ AlertController f323b;

            c(AlertController alertController) {
                this.f323b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0075f.this.f313x.onClick(this.f323b.f237b, i);
                if (C0075f.this.f282H) {
                    return;
                }
                this.f323b.f237b.dismiss();
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$f$d */
        class d implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ RecycleListView f325b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ AlertController f326c;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f325b = recycleListView;
                this.f326c = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = C0075f.this.f280F;
                if (zArr != null) {
                    zArr[i] = this.f325b.isItemChecked(i);
                }
                C0075f.this.f284J.onClick(this.f326c.f237b, i, this.f325b.isItemChecked(i));
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$f$e */
        public interface e {
            /* JADX INFO: renamed from: a */
            void m395a(ListView listView);
        }

        public C0075f(Context context) {
            this.f290a = context;
            this.f291b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX INFO: renamed from: b */
        private void m393b(AlertController alertController) {
            ListAdapter c0077h;
            RecycleListView recycleListView = (RecycleListView) this.f291b.inflate(alertController.f228L, (ViewGroup) null);
            if (this.f281G) {
                c0077h = this.f285K == null ? new a(this.f290a, alertController.f229M, R.id.text1, this.f311v, recycleListView) : new b(this.f290a, this.f285K, false, recycleListView, alertController);
            } else {
                int i = this.f282H ? alertController.f230N : alertController.f231O;
                if (this.f285K != null) {
                    c0077h = new SimpleCursorAdapter(this.f290a, i, this.f285K, new String[]{this.f286L}, new int[]{R.id.text1});
                } else {
                    c0077h = this.f312w;
                    if (c0077h == null) {
                        c0077h = new C0077h(this.f290a, i, R.id.text1, this.f311v);
                    }
                }
            }
            e eVar = this.f289O;
            if (eVar != null) {
                eVar.m395a(recycleListView);
            }
            alertController.f224H = c0077h;
            alertController.f225I = this.f283I;
            if (this.f313x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.f284J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f288N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.f282H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f281G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f242g = recycleListView;
        }

        /* JADX INFO: renamed from: a */
        public void m394a(AlertController alertController) {
            View view = this.f296g;
            if (view != null) {
                alertController.m383l(view);
            } else {
                CharSequence charSequence = this.f295f;
                if (charSequence != null) {
                    alertController.m387q(charSequence);
                }
                Drawable drawable = this.f293d;
                if (drawable != null) {
                    alertController.m385n(drawable);
                }
                int i = this.f292c;
                if (i != 0) {
                    alertController.m384m(i);
                }
                int i2 = this.f294e;
                if (i2 != 0) {
                    alertController.m384m(alertController.m377c(i2));
                }
            }
            CharSequence charSequence2 = this.f297h;
            if (charSequence2 != null) {
                alertController.m386o(charSequence2);
            }
            if (this.f298i != null || this.f299j != null) {
                alertController.m382k(-1, this.f298i, this.f300k, null, this.f299j);
            }
            if (this.f301l != null || this.f302m != null) {
                alertController.m382k(-2, this.f301l, this.f303n, null, this.f302m);
            }
            if (this.f304o != null || this.f305p != null) {
                alertController.m382k(-3, this.f304o, this.f306q, null, this.f305p);
            }
            if (this.f311v != null || this.f285K != null || this.f312w != null) {
                m393b(alertController);
            }
            View view2 = this.f315z;
            if (view2 != null) {
                if (this.f279E) {
                    alertController.m390t(view2, this.f275A, this.f276B, this.f277C, this.f278D);
                    return;
                } else {
                    alertController.m389s(view2);
                    return;
                }
            }
            int i3 = this.f314y;
            if (i3 != 0) {
                alertController.m388r(i3);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$g */
    private static final class HandlerC0076g extends Handler {

        /* JADX INFO: renamed from: a */
        private WeakReference<DialogInterface> f328a;

        public HandlerC0076g(DialogInterface dialogInterface) {
            this.f328a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f328a.get(), message.what);
            } else {
                if (i != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$h */
    private static class C0077h extends ArrayAdapter<CharSequence> {
        public C0077h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, DialogC0085h dialogC0085h, Window window) {
        this.f236a = context;
        this.f237b = dialogC0085h;
        this.f238c = window;
        this.f234R = new HandlerC0076g(dialogC0085h);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, C0502j.AlertDialog, C0493a.alertDialogStyle, 0);
        this.f226J = typedArrayObtainStyledAttributes.getResourceId(C0502j.AlertDialog_android_layout, 0);
        this.f227K = typedArrayObtainStyledAttributes.getResourceId(C0502j.AlertDialog_buttonPanelSideLayout, 0);
        this.f228L = typedArrayObtainStyledAttributes.getResourceId(C0502j.AlertDialog_listLayout, 0);
        this.f229M = typedArrayObtainStyledAttributes.getResourceId(C0502j.AlertDialog_multiChoiceItemLayout, 0);
        this.f230N = typedArrayObtainStyledAttributes.getResourceId(C0502j.AlertDialog_singleChoiceItemLayout, 0);
        this.f231O = typedArrayObtainStyledAttributes.getResourceId(C0502j.AlertDialog_listItemLayout, 0);
        this.f232P = typedArrayObtainStyledAttributes.getBoolean(C0502j.AlertDialog_showTitle, true);
        this.f239d = typedArrayObtainStyledAttributes.getDimensionPixelSize(C0502j.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        dialogC0085h.m558d(1);
    }

    /* JADX INFO: renamed from: a */
    static boolean m365a(View view) {
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
            if (m365a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    private void m366b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* JADX INFO: renamed from: f */
    static void m367f(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* JADX INFO: renamed from: i */
    private ViewGroup m368i(View view, View view2) {
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

    /* JADX INFO: renamed from: j */
    private int m369j() {
        int i = this.f227K;
        return i == 0 ? this.f226J : this.f233Q == 1 ? i : this.f226J;
    }

    /* JADX INFO: renamed from: p */
    private void m370p(ViewGroup viewGroup, View view, int i, int i2) {
        View viewFindViewById = this.f238c.findViewById(C0498f.scrollIndicatorUp);
        View viewFindViewById2 = this.f238c.findViewById(C0498f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            C0292v.m2045B0(view, i, i2);
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
        if (this.f241f != null) {
            this.f217A.setOnScrollChangeListener(new C0071b(this, viewFindViewById, viewFindViewById2));
            this.f217A.post(new RunnableC0072c(viewFindViewById, viewFindViewById2));
            return;
        }
        ListView listView = this.f242g;
        if (listView != null) {
            listView.setOnScrollListener(new C0073d(this, viewFindViewById, viewFindViewById2));
            this.f242g.post(new RunnableC0074e(viewFindViewById, viewFindViewById2));
            return;
        }
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    /* JADX INFO: renamed from: u */
    private void m371u(ViewGroup viewGroup) {
        int i;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f250o = button;
        button.setOnClickListener(this.f235S);
        if (TextUtils.isEmpty(this.f251p) && this.f253r == null) {
            this.f250o.setVisibility(8);
            i = 0;
        } else {
            this.f250o.setText(this.f251p);
            Drawable drawable = this.f253r;
            if (drawable != null) {
                int i2 = this.f239d;
                drawable.setBounds(0, 0, i2, i2);
                this.f250o.setCompoundDrawables(this.f253r, null, null, null);
            }
            this.f250o.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f254s = button2;
        button2.setOnClickListener(this.f235S);
        if (TextUtils.isEmpty(this.f255t) && this.f257v == null) {
            this.f254s.setVisibility(8);
        } else {
            this.f254s.setText(this.f255t);
            Drawable drawable2 = this.f257v;
            if (drawable2 != null) {
                int i3 = this.f239d;
                drawable2.setBounds(0, 0, i3, i3);
                this.f254s.setCompoundDrawables(this.f257v, null, null, null);
            }
            this.f254s.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.f258w = button3;
        button3.setOnClickListener(this.f235S);
        if (TextUtils.isEmpty(this.f259x) && this.f261z == null) {
            this.f258w.setVisibility(8);
        } else {
            this.f258w.setText(this.f259x);
            Drawable drawable3 = this.f261z;
            if (drawable3 != null) {
                int i4 = this.f239d;
                drawable3.setBounds(0, 0, i4, i4);
                this.f258w.setCompoundDrawables(this.f261z, null, null, null);
            }
            this.f258w.setVisibility(0);
            i |= 4;
        }
        if (m376z(this.f236a)) {
            if (i == 1) {
                m366b(this.f250o);
            } else if (i == 2) {
                m366b(this.f254s);
            } else if (i == 4) {
                m366b(this.f258w);
            }
        }
        if (i != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    /* JADX INFO: renamed from: v */
    private void m372v(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f238c.findViewById(C0498f.scrollView);
        this.f217A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.f217A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.f222F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f241f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f217A.removeView(this.f222F);
        if (this.f242g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f217A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.f217A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.f242g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* JADX INFO: renamed from: w */
    private void m373w(ViewGroup viewGroup) {
        View viewInflate = this.f243h;
        if (viewInflate == null) {
            viewInflate = this.f244i != 0 ? LayoutInflater.from(this.f236a).inflate(this.f244i, viewGroup, false) : null;
        }
        boolean z = viewInflate != null;
        if (!z || !m365a(viewInflate)) {
            this.f238c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f238c.findViewById(C0498f.custom);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.f249n) {
            frameLayout.setPadding(this.f245j, this.f246k, this.f247l, this.f248m);
        }
        if (this.f242g != null) {
            ((LinearLayout.LayoutParams) ((C0167g0.a) viewGroup.getLayoutParams())).weight = CropImageView.DEFAULT_ASPECT_RATIO;
        }
    }

    /* JADX INFO: renamed from: x */
    private void m374x(ViewGroup viewGroup) {
        if (this.f223G != null) {
            viewGroup.addView(this.f223G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f238c.findViewById(C0498f.title_template).setVisibility(8);
            return;
        }
        this.f220D = (ImageView) this.f238c.findViewById(R.id.icon);
        if (!(!TextUtils.isEmpty(this.f240e)) || !this.f232P) {
            this.f238c.findViewById(C0498f.title_template).setVisibility(8);
            this.f220D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f238c.findViewById(C0498f.alertTitle);
        this.f221E = textView;
        textView.setText(this.f240e);
        int i = this.f218B;
        if (i != 0) {
            this.f220D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f219C;
        if (drawable != null) {
            this.f220D.setImageDrawable(drawable);
        } else {
            this.f221E.setPadding(this.f220D.getPaddingLeft(), this.f220D.getPaddingTop(), this.f220D.getPaddingRight(), this.f220D.getPaddingBottom());
            this.f220D.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: y */
    private void m375y() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.f238c.findViewById(C0498f.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(C0498f.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(C0498f.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(C0498f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(C0498f.customPanel);
        m373w(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(C0498f.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(C0498f.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(C0498f.buttonPanel);
        ViewGroup viewGroupM368i = m368i(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupM368i2 = m368i(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupM368i3 = m368i(viewFindViewById9, viewFindViewById6);
        m372v(viewGroupM368i2);
        m371u(viewGroupM368i3);
        m374x(viewGroupM368i);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (viewGroupM368i == null || viewGroupM368i.getVisibility() == 8) ? 0 : 1;
        boolean z3 = (viewGroupM368i3 == null || viewGroupM368i3.getVisibility() == 8) ? false : true;
        if (!z3 && viewGroupM368i2 != null && (viewFindViewById2 = viewGroupM368i2.findViewById(C0498f.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z2 != 0) {
            NestedScrollView nestedScrollView = this.f217A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.f241f == null && this.f242g == null) ? null : viewGroupM368i.findViewById(C0498f.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupM368i2 != null && (viewFindViewById = viewGroupM368i2.findViewById(C0498f.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.f242g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).m391a(z2, z3);
        }
        if (!z) {
            View view = this.f242g;
            if (view == null) {
                view = this.f217A;
            }
            if (view != null) {
                m370p(viewGroupM368i2, view, z2 | (z3 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f242g;
        if (listView2 == null || (listAdapter = this.f224H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i = this.f225I;
        if (i > -1) {
            listView2.setItemChecked(i, true);
            listView2.setSelection(i);
        }
    }

    /* JADX INFO: renamed from: z */
    private static boolean m376z(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0493a.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    /* JADX INFO: renamed from: c */
    public int m377c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f236a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX INFO: renamed from: d */
    public ListView m378d() {
        return this.f242g;
    }

    /* JADX INFO: renamed from: e */
    public void m379e() {
        this.f237b.setContentView(m369j());
        m375y();
    }

    /* JADX INFO: renamed from: g */
    public boolean m380g(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f217A;
        return nestedScrollView != null && nestedScrollView.m2222q(keyEvent);
    }

    /* JADX INFO: renamed from: h */
    public boolean m381h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f217A;
        return nestedScrollView != null && nestedScrollView.m2222q(keyEvent);
    }

    /* JADX INFO: renamed from: k */
    public void m382k(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.f234R.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.f259x = charSequence;
            this.f260y = message;
            this.f261z = drawable;
        } else if (i == -2) {
            this.f255t = charSequence;
            this.f256u = message;
            this.f257v = drawable;
        } else {
            if (i != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f251p = charSequence;
            this.f252q = message;
            this.f253r = drawable;
        }
    }

    /* JADX INFO: renamed from: l */
    public void m383l(View view) {
        this.f223G = view;
    }

    /* JADX INFO: renamed from: m */
    public void m384m(int i) {
        this.f219C = null;
        this.f218B = i;
        ImageView imageView = this.f220D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.f220D.setImageResource(this.f218B);
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public void m385n(Drawable drawable) {
        this.f219C = drawable;
        this.f218B = 0;
        ImageView imageView = this.f220D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.f220D.setImageDrawable(drawable);
            }
        }
    }

    /* JADX INFO: renamed from: o */
    public void m386o(CharSequence charSequence) {
        this.f241f = charSequence;
        TextView textView = this.f222F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX INFO: renamed from: q */
    public void m387q(CharSequence charSequence) {
        this.f240e = charSequence;
        TextView textView = this.f221E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX INFO: renamed from: r */
    public void m388r(int i) {
        this.f243h = null;
        this.f244i = i;
        this.f249n = false;
    }

    /* JADX INFO: renamed from: s */
    public void m389s(View view) {
        this.f243h = view;
        this.f244i = 0;
        this.f249n = false;
    }

    /* JADX INFO: renamed from: t */
    public void m390t(View view, int i, int i2, int i3, int i4) {
        this.f243h = view;
        this.f244i = 0;
        this.f249n = true;
        this.f245j = i;
        this.f246k = i2;
        this.f247l = i3;
        this.f248m = i4;
    }
}
